package main

/*
 * @lc app=leetcode id=724 lang=golang
 *
 * [724] Find Pivot Index
 */

// @lc code=start
func pivotIndex(nums []int) int {
	left, right := 0, 0
	for _, num := range nums {
		right += num
	}

	for i, num := range nums {
		right -= num
		if left == right {
			return i
		}
		left += num
	}
	return -1
}

// @lc code=end
