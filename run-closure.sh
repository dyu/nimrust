#!/bin/sh

echo "The results are elapsed time in milliseconds"
echo "============================================"

echo "nimrod:"
./closure_nim
./closure_nim

echo "\nrust:"
./closure_rust
./closure_rust

