package main

/*
 * @lc app=leetcode id=594 lang=golang
 *
 * [594] Longest Harmonious Subsequence
 */

// @lc code=start
func findLHS(nums []int) int {
	slice := make(map[int]int)
	for _, v := range nums {
		slice[v]++
	}
	length := 0
	for k, v := range slice {
		if slice[k+1] == 0 || v+slice[k+1] <= length {
			continue
		}
		length = v + slice[k+1]
	}
	return length
}

// @lc code=end
