package main

/*
 * @lc app=leetcode id=405 lang=golang
 *
 * [405] Convert a Number to Hexadecimal
 */

// @lc code=start
func toHex(num int) string {
	if num == 0 {
		return "0"
	}
	if num < 0 {
		num += 1 << 32
	}
	hex := "0123456789abcdef"
	res := ""
	for num > 0 {
		res = string(hex[num%16]) + res
		num /= 16
	}
	return res
}

// @lc code=end
