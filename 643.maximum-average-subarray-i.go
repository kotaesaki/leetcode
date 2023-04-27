package main

/*
 * @lc app=leetcode id=643 lang=golang
 *
 * [643] Maximum Average Subarray I
 */

// @lc code=start
func findMaxAverage(nums []int, k int) float64 {
	var total *float64 = nil

	for i := 0; i < len(nums)-(k-1); i++ {
		avg := 0.0
		for j := 0; j < k; j++ {
			avg += float64(nums[i+j])
		}
		if total == nil || *total < avg {
			total = &avg
		}
	}
	return *total / float64(k)
}

// @lc code=end
