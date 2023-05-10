package main

import (
	"strconv"
)

/*
 * @lc app=leetcode id=682 lang=golang
 *
 * [682] Baseball Game
 */

// @lc code=start
func calPoints(operations []string) int {
	result := []int{}

	for _, ops := range operations {
		if ops == string('+') {
			result = append(result, result[len(result)-1]+result[len(result)-2])
		} else if ops == string('C') {
			result = append([]int{}, result[0:len(result)-1]...)
		} else if ops == string('D') {
			result = append(result, result[len(result)-1]*2)
		} else {
			if value, err := strconv.Atoi(ops); err == nil {
				result = append(result, value)
			}
		}
	}
	var answer int
	for _, v := range result {
		answer += v
	}
	return answer
}

// @lc code=end
