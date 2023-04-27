package main

/*
 * @lc app=leetcode id=643 lang=golang
 *
 * [643] Maximum Average Subarray I
 */

// @lc code=start
func findMaxAverage(nums []int, k int) float64 {
	total := -100000.0
	length := float64(k)
	for i := 0; i < len(nums)-(k-1); i++ {
		avg := 0.0
		for j := 0; float64(j) < length; j++ {
			avg += float64(nums[i+j])
		}
		avg /= length
		if total < avg {
			total = avg
		}
	}
	return float64(total)
}

// @lc code=end
