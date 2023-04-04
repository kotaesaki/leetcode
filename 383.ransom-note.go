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
		abc_list[c] += 1
	}

	for _, c := range ransomNote {
		abc_list[c] -= 1
		if abc_list[c] < 0 {
			return false
		}
	}
	return true
}

// @lc code=end
