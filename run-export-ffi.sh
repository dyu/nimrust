#!/bin/sh

echo "The results are elapsed time in milliseconds"
echo "============================================"

echo "c:"
./call_cplus
./call_cplus

echo "\nnimrod:"
./call_nimplus
./call_nimplus

echo "\nrust:"
./call_rustplus
./call_rustplus

