add_executable(hello-test
  hello_test.cpp
)

target_link_libraries(hello-test
    PRIVATE
        fff
        project_options
        project_warnings
)

add_test(hello-test)