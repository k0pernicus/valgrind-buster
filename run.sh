#!/bin/bash

cd /app/src/
echo "src directory: $PWD..."
echo "compiling..."
make app
echo "executing valgrind..."
valgrind --leak-check=full ./main
