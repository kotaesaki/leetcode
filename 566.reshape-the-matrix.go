package main

/*
 * @lc app=leetcode id=566 lang=golang
 *
 * [566] Reshape the Matrix
 */

// @lc code=start
func matrixReshape(mat [][]int, r int, c int) [][]int {
	output := make([][]int, r)
	for i := 0; i < r; i++ {
		for _, arr := range mat {
			for _, v := range arr {
				if len(output[i]) < r {
					output[i] = append(output[i], v)
				}
			}

		}
	}
	return output
}

// @lc code=end
