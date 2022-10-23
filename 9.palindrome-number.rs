/*
 * @lc app=leetcode id=9 lang=rust
 *
 * [9] Palindrome Number
 */

// @lc code=start
impl Solution {
    pub fn is_palindrome(x: i32) -> bool {
      if x < 0 { return false };
      let str: String = x.to_string();
      if str == str.chars().rev().collect::<String>(){ return true };
      return false
    }
}
// @lc code=end
