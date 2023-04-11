package main

import "strings"

/*
 * @lc app=leetcode id=405 lang=golang
 *
 * [405] Convert a Number to Hexadecimal
 */

// @lc code=start
func toHex(num int) string {
	list := []string{"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"}
	var num16 []string
	for num != 0 {
		num16 = append([]string{list[num%16]}, num16...)
		num /= 16
	}
	return strings.Join(num16, "")
}

// @lc code=end
