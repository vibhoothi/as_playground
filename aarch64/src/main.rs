extern "C" {
    fn main_addr() -> u32;
}

fn main() {
    let sum = unsafe { main_addr() };
    println!("{}", sum);
}
