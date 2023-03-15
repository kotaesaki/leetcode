package main

import "strings"

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
	chars1 := []rune(s)
	s1 := []string{}
	for i := 0; i < len(chars1); i++ {
		s1 = append(s1, string(chars1[i]))
	}
	for _, v := range s1 {
		if strings.Contains(t, v) {
			t = strings.Replace(t, v, "", 1)
		} else {
			return false
		}
	}
	return true
}

// @lc code=end
