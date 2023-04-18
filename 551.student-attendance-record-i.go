package main

/*
 * @lc app=leetcode id=551 lang=golang
 *
 * [551] Student Attendance Record I
 */

// @lc code=start
func checkRecord(s string) bool {
	consecutiveLate := 0
	absentCount := 0
	for _, r := range s {
		if string(r) == "L" {
			consecutiveLate++
			if consecutiveLate == 3 {
				return false
			}
			continue
		}
		if string(r) == "A" {
			absentCount++
			if absentCount == 2 {
				return false
			}
		}
		consecutiveLate = 0
	}
	return true

}

// @lc code=end
