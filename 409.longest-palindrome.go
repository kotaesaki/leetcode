package main

import (
	"fmt"
	"sort"
)

/*
 * @lc app=leetcode id=409 lang=golang
 *
 * [409] Longest Palindrome
 */

// @lc code=start
func longestPalindrome(s string) int {
	char_list := make(map[string]int, 26)
	first_char := ""
	for _, r := range s {
		if first_char == "" {
			first_char = string(r)
		}
		char_list[string(r)]++
		if char_list[string(r)] > char_list[first_char] {

		}
	}
	sort.Slice(char_list, func(i, j int) bool {
		return char_list[i][1].(int) < char_list[j][1].int
	})
	fmt.Println(char_list)

	// return 1
	// for c,  := range char_list {
	// }
}

// @lc code=end
