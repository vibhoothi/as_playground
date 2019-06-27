#![feature(rustc_private)]
extern crate cc;

fn main() {
    cc::Build::new()
        .file("src/add.s")
        .compile("my-asm-lib");
}
