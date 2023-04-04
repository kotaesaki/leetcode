package main

/*
 * @lc app=leetcode id=383 lang=golang
 *
 * [383] Ransom Note
 */

// @lc code=start
func canConstruct(ransomNote string, magazine string) bool {
	abc_list := make(map[rune]int, 26)
	for _, c := range magazine {
		abc_list[c]++
	}

	for _, c := range ransomNote {
		if abc_list[c] == 0 {
			return false
		}
		abc_list[c]--
	}
	return true
}

// @lc code=end
