package main

/*
 * @lc app=leetcode id=374 lang=golang
 *
 * [374] Guess Number Higher or Lower
 */

// @lc code=start
/**
 * Forward declaration of guess API.
 * @param  num   your guess
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0
 * func guess(num int) int;
 */

func guessNumber(n int) int {
	if guess(n) == 0 {
		return n
	}
	low, high := 1, n
	n = n/2 + 1
	for guess(n) != 0 {
		if guess(n) == -1 {
			high = n
		} else {
			low = n
		}
		n = low + (high-low)/2
	}
	return n
}

// @lc code=end
