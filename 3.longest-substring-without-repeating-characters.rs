/*
 * @lc app=leetcode id=3 lang=rust
 *
 * [3] Longest Substring Without Repeating Characters
 */

// @lc code=start
impl Solution {
    pub fn length_of_longest_substring(s: String) -> i32 {
        const RADIX: u32 = 10;
        let mut vec: Vec<char> = vec![];
        let mut result: u8;
        for i in s.as_str().chars() {
            println!("{}", i.to_digit(RADIX).unwrap());
            // if !vec.iter().any(|e| e == i.to_digit(RADIX).unwrap()) {
            //     vec.push(i);
            // } else {
            //     if result < vec.len() {
            //         result = vec.len() as u8;
            //     }
            //     vec = vec![];
            //     break;
            // }
        }
        // vec.len()
        2
    }
}
// @lc code=end
