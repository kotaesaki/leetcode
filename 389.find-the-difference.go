package main

/*
 * @lc app=leetcode id=389 lang=golang
 *
 * [389] Find the Difference
 */

// @lc code=start
func findTheDifference(s string, t string) byte {
	char_list := make([]int, 26)
	for _, r := range s {
		char_list[r-97]++
	}

	for _, r := range t {
		if char_list[r-97] == 0 {
			return byte(r)
		}
		char_list[r-97]--
	}
	panic("Error")
}

// @lc code=end
