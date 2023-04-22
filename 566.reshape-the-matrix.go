package main

/*
 * @lc app=leetcode id=566 lang=golang
 *
 * [566] Reshape the Matrix
 */

// @lc code=start
func matrixReshape(mat [][]int, r int, c int) [][]int {
	m, n := len(mat), len(mat[0])
	if m*n != r*c {
		return mat
	}

	length := 0
	for _, v := range mat {
		length += len(v)
	}

	i := 0
	var target int
	if length < r {
		target = c
	} else {
		target = r
	}
	output := make([][]int, target)

	for _, v := range mat {
		for _, v2 := range v {
			if len(output[i]) == length/target {
				i++
			}
			output[i] = append(output[i], v2)
		}
	}
	return output
}

// @lc code=end
