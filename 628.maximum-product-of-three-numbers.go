package main

import (
	"sort"
)

/*
 * @lc app=leetcode id=628 lang=golang
 *
 * [628] Maximum Product of Three Numbers
 */

// @lc code=start

func maximumProduct(nums []int) int {
	// 配列を昇順にソートする
	sort.Ints(nums)
	n := len(nums)
	// 最大値は、最後の3つの要素の積、または最初の2つの要素と最後の1つの要素の積のうち大きい方
	return max(nums[n-1]*nums[n-2]*nums[n-3], nums[0]*nums[1]*nums[n-1])
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

// @lc code=end
