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
		if slice[k-1]+slice[k+1] == 0 {
			continue
		}
		var sub_length int
		if slice[k-1] > slice[k+1] {
			sub_length = slice[k-1]
		} else {
			sub_length = slice[k+1]
		}

		if v+sub_length <= length {
			continue
		}
		length = v + sub_length
	}
	return length
}

// @lc code=end
