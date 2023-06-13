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
		if _, ok := a[n]; !ok {
			a[n] = true
		} else {
			return true
		}
	}
	return false
}

// @lc code=end
