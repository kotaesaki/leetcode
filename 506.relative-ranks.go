package main

import (
	"sort"
	"strconv"
)

/*
 * @lc app=leetcode id=506 lang=golang
 *
 * [506] Relative Ranks
 */

// @lc code=start
func findRelativeRanks(score []int) []string {
	result := make([]string, len(score))
	new_score := make([]int, len(score))
	copy(new_score, score)
	sort.Sort(sort.Reverse(sort.IntSlice(score)))

	for i, v := range score {
		index := findScoreIndex(v, new_score)
		if i == 0 {
			result[index] = "Gold Medal"
			continue
		}
		if i == 1 {
			result[index] = "Silver Medal"
			continue
		}
		if i == 2 {
			result[index] = "Bronze Medal"
			continue
		}
		result[index] = strconv.Itoa(i + 1)
	}
	return result
}

func findScoreIndex(value int, new_score []int) int {
	for i, v := range new_score {
		if value == v {
			return i
		}
	}
	panic("panic")
}

// @lc code=end
