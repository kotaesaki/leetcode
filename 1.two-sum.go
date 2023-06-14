package main

/*
 * @lc app=leetcode id=1 lang=golang
 *
 * [1] Two Sum
 */

// @lc code=start
func twoSum(nums []int, target int) []int {
	prevMap := make(map[int]int)
	for i, n := range nums {
		diff := target - n
		if _, ok := prevMap[diff]; ok {
			return []int{prevMap[diff], i}
		}
		prevMap[n] = i
	}
	panic("error")
}

// @lc code=end
