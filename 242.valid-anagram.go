package main

/*
 * @lc app=leetcode id=242 lang=golang
 *
 * [242] Valid Anagram
 */

// @lc code=start
func isAnagram(s string, t string) bool {
	if len(s) != len(t) {
		return false
	}

	a := make(map[rune]int)
	for _, c := range s {
		a[c]++
	}

	for _, c := range t {
		if a[c] < 1 {
			return false
		}
		a[c]--
	}
	return true
}

// @lc code=end
