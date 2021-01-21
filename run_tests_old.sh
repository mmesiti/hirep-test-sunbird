#!/bin/bash -e

# if we are running inside a github action, change workdir
[ ! -z "$GITHUB_WORKSPACE" ] && cd $GITHUB_WORKSPACE/TestProgram

../Make/Utils/write_mkflags.pl -f ../Make/MkFlags $@ || exit 1

if [[ " $@ " =~ ' --gauge[[:space:]]SPN ' ]]
then
    echo Run SpN regression tests...
    make  -C SPNtoSUNRegression runtests
fi

echo Cleaning...
( cd .. && make cleanall )

echo Building...
make -j1 tests

echo Run Tests...
make runalltests
