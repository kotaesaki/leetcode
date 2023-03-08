package main

import "math"

/*
 * @lc app=leetcode id=231 lang=golang
 *
 * [231] Power of Two
 */

// @lc code=start
func isPowerOfTwo(n int) bool {
	if n == 0 {
		return false
	}
	if n == 1 {
		return true
	}

	var value float64
	i := float64(0)
	if n > 1 {
		for float64(n) <= value {
			value = math.Pow(2, i)
			i++
		}
		return float64(n) == value
	}
	for float64(n) <= value {
		value = math.Pow(2, i)
		i--
	}
	return float64(n) == value
}

// @lc code=end
