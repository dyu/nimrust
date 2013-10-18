use std::libc::*;

#[link_args = "-lnewplus"]
extern
{
    fn current_timestamp() -> c_long;
}

struct GetSet<'self>
{
    get: &'self fn() -> c_int,
    set: &'self fn(c_int)
}

#[fixed_stack_segment]
fn run(gs: &GetSet, loops: c_int)
{
    while (gs.get)() < loops
    {
        let x = (gs.get)() + 1;
        (gs.set)(x);
    }
}

#[fixed_stack_segment]
fn main()
{
    let mut start: c_long;
    let mut endts: c_long;
    
    // closure start
    let mut mv:c_int = 0;
    let fn_get = || -> c_int { mv };
    let fn_set = |v: c_int| { mv = v; };
    
    let gs = GetSet{get: fn_get, set: fn_set};
    // closure end

    unsafe { start = current_timestamp(); }

    // run
    run(&gs, 2000000000);

    unsafe { endts = current_timestamp(); }

    println!("{}", endts - start);
}
