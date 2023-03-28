package main

/*
 * @lc app=leetcode id=263 lang=golang
 *
 * [263] Ugly Number
 */

// @lc code=start
func isUgly(n int) bool {
	if n < 1 {
		return false
	}
	if n == 1 {
		return true
	}

	flg := false
	for !flg {
		if n%2 == 0 {
			n = n / 2
		} else if n%3 == 0 {
			n = n / 3
		} else if n%5 == 0 {
			n = n / 5
		} else {
			return false
		}
		if n == 1 {
			flg = true
		}
	}
	return true
}

// @lc code=end
