package main

/*
 * @lc app=leetcode id=217 lang=golang
 *
 * [217] Contains Duplicate
 */

// @lc code=start
func containsDuplicate(nums []int) bool {
	a := make(map[int]bool)
	for _, n := range nums {
		a[n] = true
	}
	return len(a) != len(nums)
}

// @lc code=end
