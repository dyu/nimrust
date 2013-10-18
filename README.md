nimrust
============

nimrod and rust benchmark

Build requirements:
- gcc
- tup

Requirements on the exec path:
- nimrod
- rustc

To initialize, exec:
- tup init

To compile, exec:
- tup upd

Compile opts:
- -O2
- --opt-level=2 (rust)

My environment:
- Intel i7-3630QM laptop (4cores, HT) with 16g ram
- Ubuntu 13.04 x64
- gcc 4.7.3
- tup 0.7-11
- nimrod 0.9.3
- rust 0.8

##FFI-EXPORT-RESULTS
```
The results are elapsed time in milliseconds
============================================
c:
4767
4753

nimrod:
4761
4761

rust:
5959
5950
```

