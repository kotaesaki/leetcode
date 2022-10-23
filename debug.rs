pub fn main () {
  let x: u8 = 100;
  let str: String = x.to_string().chars().rev().collect();

  
  println!("{}", str);
}
