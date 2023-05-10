package main

/*
 * @lc app=leetcode id=680 lang=golang
 *
 * [680] Valid Palindrome II
 */

// @lc code=start
func validPalindrome(s string) bool {
	left, right := 0, len(s)-1

	for left < right {
		if s[left] != s[right] {
			return isPalindromes(s, left+1, right) || isPalindromes(s, left, right-1)
		}
		left++
		right--
	}
	return true
}

func isPalindromes(s string, left int, right int) bool {
	for left < right {
		if s[left] != s[right] {
			return false
		}
		left++
		right--
	}
	return true
}

// @lc code=end
