package main

/*
 * @lc app=leetcode id=367 lang=golang
 *
 * [367] Valid Perfect Square
 */

// @lc code=start
func isPerfectSquare(num int) bool {
	for i := 1; i*i <= num; i++ {
		if i*i == num {
			return true
		}
	}
	return false
}

// @lc code=end
