package main

/*
 * @lc app=leetcode id=599 lang=golang
 *
 * [599] Minimum Index Sum of Two Lists
 */

// @lc code=start
func findRestaurant(list1 []string, list2 []string) []string {
	output := []string{}
	resultIndex := 2001
	for i, v := range list2 {
		index := findIndex(list1, v)
		if index == nil || resultIndex < i+(*index) {
			continue
		}
		sumIndex := i + (*index)
		if resultIndex > sumIndex {
			resultIndex = sumIndex
			output = nil
		}
		output = append(output, v)
	}
	return output
}

func findIndex(list []string, value string) *int {
	for i, v := range list {
		if value == v {
			return &i
		}
	}
	return nil
}

// @lc code=end
