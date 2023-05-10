package main

/*
 * @lc app=leetcode id=693 lang=golang
 *
 * [693] Binary Number with Alternating Bits
 */

// @lc code=start
func hasAlternatingBits(n int) bool {
	prevBit := n & 1
	n = n >> 1
	for n > 0 {
		currBit := n & 1
		if currBit == prevBit {
			return false
		}
		prevBit = currBit
		n = n >> 1
	}
	return true
}

// @lc code=end
