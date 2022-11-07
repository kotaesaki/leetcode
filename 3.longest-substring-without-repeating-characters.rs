/*
 * @lc app=leetcode id=3 lang=rust
 *
 * [3] Longest Substring Without Repeating Characters
 */

// @lc code=start
use std::cmp::max;
impl Solution {
    pub fn length_of_longest_substring(s: String) -> i32 {
        let mut current: Vec<char> = vec![];
        let mut max_length = 0;

        s.chars().for_each(|c| {
            if let Some(i) = current.iter().position(|&x| x == c) {
                current.drain(0..i + 1);
            }
            current.push(c);
            max_length = max(current.len(), max_length);
        });
        max_length as i32
        // let mut vec: Vec<char> = vec![];

        // let mut result: usize = 0;
        // for i in s.as_str().chars() {
        //     if !vec.iter().any(|e| *e == i) {
        //         vec.push(i);
        //     } else {
        //         if result < vec.len() {
        //             result = vec.len();
        //         };
        //         for v in &vec {
        //             vec.remove(0);
        //             if *v == i {
        //                 break;
        //             }
        //         }
        //         vec.push(i);
        //     }
        // }
        // if result < vec.len() {
        //     result = vec.len();
        // }
        // result as i32
    }
}
// @lc code=end
