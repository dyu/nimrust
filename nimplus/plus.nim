
proc plus*(x: int32, y: int32): int32 {.cdecl, exportc, dynlib.} =
  return x + y

proc plusone*(x: int32): int32 {.cdecl, exportc, dynlib.} =
  return x + 1

