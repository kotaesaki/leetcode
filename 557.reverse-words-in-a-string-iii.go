package main

import (
	"strings"
)

/*
 * @lc app=leetcode id=557 lang=golang
 *
 * [557] Reverse Words in a String III
 */

// @lc code=start
func reverseWords(s string) string {
	words := strings.Split(s, " ")
	for i, word := range words {
		runes := []rune(word)
		for j := 0; j < len(runes)/2; j++ {
			k := len(runes) - j - 1
			runes[j], runes[k] = runes[k], runes[j]
		}
		words[i] = string(runes)
	}
	return strings.Join(words, " ")
}

// @lc code=end
