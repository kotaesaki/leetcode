package main

/*
 * @lc app=leetcode id=389 lang=golang
 *
 * [389] Find the Difference
 */

// @lc code=start
func findTheDifference(s string, t string) byte {
	// char_list := make([]int, 26)
	for i, _ := range t {
		if s[i:i+1] != t[i:i+1] {
			return byte(i)
		}
	}

}

// @lc code=end
