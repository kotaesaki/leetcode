package main

/*
 * @lc app=leetcode id=520 lang=golang
 *
 * [520] Detect Capital
 */

// @lc code=start
func detectCapitalUse(word string) bool {
	if len(word) == 1 {
		return true
	}
	output := make([]int, len(word))
	for i, r := range word {
		if r < 97 {
			output[i] = 0
		} else {
			output[i] = 1
		}
	}
	if output[0] == 1 {
		return !find(output, 0)
	}
	if output[1] == 0 {
		return !find(output, 1)
	}
	return !find(output[1:], 0)
}

func find(output []int, value int) bool {
	for _, v := range output {
		if value == v {
			return true
		}
	}
	return false
}

// @lc code=end
