
proc current_timestamp*(): int64 {.importc, cdecl, dynlib:"libnewplus.so".}

type
  GetSet = tuple[
    get: proc(): int32 {.closure.},
    set: proc(v: int32) {.closure.}]

proc run(gs: GetSet, loops: int64) = 
  while gs.get() < loops: 
    let x:int32 = gs.get() + 1
    gs.set(x)

proc newGetSet(): GetSet {.inline.} =
  var mv:int32 = 0
  
  result = (
    get: proc(): int32 = 
      result = mv,
    set: proc(v: int32) = 
      mv = v
  )

when isMainModule:

  var start, endts: int64
  
  let gs = newGetSet()

  start = current_timestamp()

  run(gs, 2_000_000_000)

  endts = current_timestamp()

  echo(endts - start)
