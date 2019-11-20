#![crate_type = "dylib"]

#[no_mangle]
pub extern fn plus(a: i32) -> i32 {
    (a + 1)
}

