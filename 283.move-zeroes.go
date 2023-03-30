package main

/*
 * @lc app=leetcode id=283 lang=golang
 *
 * [283] Move Zeroes
 */

// @lc code=start
func moveZeroes(nums []int) {
	index := 0
	for i := 0; i < len(nums); i++ {
		if nums[index] != 0 {
			index += 1
			continue
		}
		nums = append(nums[:index], nums[index+1:]...)
		nums = append(nums, 0)
	}
}

// @lc code=end
