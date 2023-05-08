package main

/*
 * @lc app=leetcode id=657 lang=golang
 *
 * [657] Robot Return to Origin
 */

// @lc code=start
func judgeCircle(moves string) bool {
	x, y := 0, 0

	for _, r := range moves {
		if 'U' == r {
			y += 1
		} else if 'D' == r {
			y -= 1
		} else if 'R' == r {
			x += 1
		} else {
			x -= 1
		}
	}
	return x == 0 && y == 0
}

// @lc code=end
