package main

import (
	"strings"
)

/*
 * @lc app=leetcode id=796 lang=golang
 *
 * [796] Rotate String
 */

// @lc code=start
func rotateString(s string, goal string) bool {
	if len(s) != len(goal) {
		return false
	}
	if strings.Index(s+s, goal) != -1 {
		return true
	}
	return false
}

// @lc code=end
