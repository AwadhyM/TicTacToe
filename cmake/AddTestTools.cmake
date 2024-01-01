# Copyright (c) 2024 Awadhy Mohammed
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include(FetchContent)

include(CTest)

if(BUILD_TESTING AND NOT CMAKE_CROSSCOMPILING)
    FetchContent_Declare(
        fff
        GIT_REPOSITORY https://github.com/meekrosoft/fff.git
        GIT_SHALLOW    OFF
        GIT_TAG        11ab05b518272b1698935a6e617d7894b713c462
    )
    FetchContent_GetProperties(fff)
    FetchContent_MakeAvailable(fff)

    include(GoogleTest)

    # Mark GoogleTest gtest library's include directories as SYSTEM, so that clang-tidy
    # will not warn about issues in GoogleTest that do not comply with our
    # clang-tidy configuration.
    get_target_property(gtest_include gtest INTERFACE_INCLUDE_DIRECTORIES)

    function(add_test target)
        target_include_directories(${target} SYSTEM
            PRIVATE
                ${gtest_include}
        )
        target_link_libraries(${target}
            PRIVATE
                gtest
        )

        gtest_discover_tests(${target})
    endfunction()
endif()