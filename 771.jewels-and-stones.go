package main

/*
 * @lc app=leetcode id=771 lang=golang
 *
 * [771] Jewels and Stones
 */

// @lc code=start
func numJewelsInStones(jewels string, stones string) int {
	result := 0
	for _, s := range stones {
		for _, j := range jewels {
			if s == j {
				result++
			}
		}
	}
	return result
}

// @lc code=end
