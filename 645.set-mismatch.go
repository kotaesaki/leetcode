package main

/*
 * @lc app=leetcode id=645 lang=golang
 *
 * [645] Set Mismatch
 */

// @lc code=start
func findErrorNums(nums []int) []int {
	hash := make(map[int]int, len(nums))
	for _, v := range nums {
		hash[v]++
	}
	var dup, missing int
	for v := 1; v < len(nums)+1; v++ {
		if hash[v] == 0 {
			missing = v
			continue
		}
		if hash[v] >= 2 {
			dup = v
			continue
		}
	}
	return []int{dup, missing}
}

// @lc code=end
