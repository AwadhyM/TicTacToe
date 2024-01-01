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

cmake_minimum_required(VERSION 3.14)
project(tic_tac_toe)

add_executable(tic-tac-toe
    src/tic_tac_toe.cpp
)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/cmake)

include(FetchContent)

include(AddTestTools)

if (CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)
    FetchContent_Declare(
        project_options
        GIT_REPOSITORY  https://github.com/cpp-best-practices/project_options.git
        GIT_TAG         v0.26.1
    )
    FetchContent_MakeAvailable(project_options)
    include(${project_options_SOURCE_DIR}/Index.cmake)
    include(${project_options_SOURCE_DIR}/src/DynamicProjectOptions.cmake)

    set(ENABLE_CPPCHECK_DEVELOPER_DEFAULT OFF)

    dynamic_project_options(
        CLANG_WARNINGS
        GCC_WARNINGS
    )
endif()

add_subdirectory(tests)