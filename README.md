# Multiplayer Tic Tac Toe game played on the command line

## Building application

```bash
cmake -S . -B __build -DFETCHCONTENT_QUIET=OFF
cmake --build __build
```

Application executable can be found at `__build/app` where `app` is the name of the application.

## Building unit tests

```bash 
cmake -S . -B __unit_build
cmake --build __unit_build --target hello-test 
```
Where hello test is the name of a binary for a unit test suite
