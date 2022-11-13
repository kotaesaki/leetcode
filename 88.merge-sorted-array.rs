/*
 * @lc app=leetcode id=88 lang=rust
 *
 * [88] Merge Sorted Array
 */

// @lc code=start
impl Solution {
    pub fn merge(nums1: &mut Vec<i32>, m: i32, nums2: &mut Vec<i32>, n: i32) {
        let m1 = m as usize;
        let n1 = n as usize;

        for _ in 0..(nums1.len() - m1) {
            nums1.pop();
        }
        for _ in 0..(nums2.len() - n1) {
            nums2.pop();
        }

        nums1.append(nums2);
        nums1.sort()
    }
}
// @lc code=end
