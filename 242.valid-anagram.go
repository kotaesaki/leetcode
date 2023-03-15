package main

import "fmt"

/*
 * @lc app=leetcode id=242 lang=golang
 *
 * [242] Valid Anagram
 */

// @lc code=start
func isAnagram(s string, t string) bool {
	// if len(s) != len(t) {
	// 	return false
	// }
	// for _, v := range s {
	// 	if strings.Contains(t, string(v)) {
	// 		t = strings.Replace(t, string(v), "", 1)
	// 	} else {
	// 		return false
	// 	}
	// }
	// return true

	chars := make([]int, 26)
	for _, v := range s {
		i := int(v - 'a')
		chars[i]++
		fmt.Println(chars)
	}

	for _, v := range t {
		i := int(v - 'a')
		chars[i]--
	}

	for _, v := range chars {
		if v != 0 {
			return false
		}
	}

	return true
}

// @lc code=end
