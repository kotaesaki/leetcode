package main

/*
 * @lc app=leetcode id=509 lang=golang
 *
 * [509] Fibonacci Number
 */

// @lc code=start
func fib(n int) int {
	slice := make([]int, 2)
	slice = []int{0, 1}
	result := 0
	for i := 0; i < n; i++ {
		slice[0], slice[1] = slice[1], result
		result = slice[0] + slice[1]
	}
	return result
}

// @lc code=end
