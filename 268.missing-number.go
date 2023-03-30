package main

/*
 * @lc app=leetcode id=268 lang=golang
 *
 * [268] Missing Number
 */

// @lc code=start
func missingNumber(nums []int) int {
	sum1 := 0
	for i := 0; i <= len(nums); i++ {
		sum1 += i
	}

	sum2 := 0
	for _, x := range nums {
		sum2 += x
	}

	return sum1 - sum2
}

// @lc code=end
