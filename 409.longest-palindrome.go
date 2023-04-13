package main

/*
 * @lc app=leetcode id=409 lang=golang
 *
 * [409] Longest Palindrome
 */

// @lc code=start
func longestPalindrome(s string) int {
	char_list := make(map[string]int, 52)
	for _, r := range s {
		char_list[string(r)]++
	}

	num := 0
	for index, i := range char_list {
		if i == 0 || i == 1 {
			continue
		}
		target := 0
		if i%2 == 0 {
			target = i
		} else {
			target = i - 1
		}

		num += target
		char_list[index] -= target
	}

	for _, i := range char_list {
		if i == 0 {
			continue
		}
		if i == 1 {
			num++
			return num
		}
	}
	return num
}

// @lc code=end
