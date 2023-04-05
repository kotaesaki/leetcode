package main

/*
 * @lc app=leetcode id=387 lang=golang
 *
 * [387] First Unique Character in a String
 */

// @lc code=start
func firstUniqChar(s string) int {
	char_list := make([]int, 26)
	for _, c := range s {
		char_list[c-97]++
	}
	for i, c := range s {
		if char_list[c-97] == 1 {
			return i
		}
	}
	return -1
}

// @lc code=end
