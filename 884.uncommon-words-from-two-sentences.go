package main

import (
	"strings"
)

/*
 * @lc app=leetcode id=884 lang=golang
 *
 * [884] Uncommon Words from Two Sentences
 */

// @lc code=start
func uncommonFromSentences(s1 string, s2 string) []string {
	h := make(map[string]int)
	var result []string
	hoge := append(strings.Split(s1, " "), strings.Split(s2, " ")...)
	for _, s := range hoge {
		h[s]++
	}

	for k, v := range h {
		if v == 1 {
			result = append(result, k)
		}
	}
	return result
}

// @lc code=end
