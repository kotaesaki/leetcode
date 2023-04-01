package main

import (
	"strings"
)

/*
 * @lc app=leetcode id=290 lang=golang
 *
 * [290] Word Pattern
 */

// @lc code=start
func wordPattern(pattern string, s string) bool {
	slice := make([]string, 26)
	words := strings.Split(s, " ")
	if len(words) != len(pattern) {
		return false
	}

	for i, c := range pattern {
		order := int(c) - 97
		if slice[order] == "" && exclude(slice, words[i], order) {
			slice[order] = words[i]
		} else if slice[order] == words[i] && exclude(slice, words[i], order) {
			continue
		} else {
			return false
		}
	}
	return true
}

func exclude(slice []string, target string, order int) bool {
	for i, s := range slice {
		if s == target && i != order {
			return false
		}
	}
	return true
}

// @lc code=end
