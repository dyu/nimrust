#[crate_type = "lib"];

use std::libc::c_int;

#[fixed_stack_segment]
#[no_mangle]
pub extern fn plus(x: c_int, y: c_int) -> c_int
{
    return x + y;
}

#[fixed_stack_segment]
#[no_mangle]
pub extern fn plusone(x: c_int) -> c_int
{
    return x + 1;
}
