package main

/*
 * @lc app=leetcode id=566 lang=golang
 *
 * [566] Reshape the Matrix
 */

// @lc code=start
func matrixReshape(mat [][]int, r int, c int) [][]int {
	output := make([][]int, r)
	length := 0
	for _, v := range mat {
		length += len(v)
	}

	for i, v := range mat {

		for _, v2 := range v {
			if output[i] == 

		}
	}
	// for i := 0; i < r; i++ {

	// 	// for _, arr := range mat {
	// 	// 	for _, v := range arr {
	// 	// 		if len(output[i]) < length {
	// 	// 			output[i] = append(output[i], v)
	// 	// 		}
	// 	// 	}

	// 	}
	// }
	return output
}

// @lc code=end
