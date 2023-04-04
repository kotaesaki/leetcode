package main

import "fmt"

/*
 * @lc app=leetcode id=349 lang=golang
 *
 * [349] Intersection of Two Arrays
 */

// @lc code=start
func intersection(nums1 []int, nums2 []int) []int {
	short_nums := []int{}
	long_nums := []int{}
	output := []int{}
	if len(nums1) > len(nums2) {
		short_nums = nums2
		long_nums = nums1
	} else {
		short_nums = nums1
		long_nums = nums2
	}

	for i := 0; i < len(short_nums); i++ {
		fmt.Println(count(long_nums, short_nums[i]))
		if count(&long_nums, short_nums[i]) {
			output = append(output, short_nums[i])
		} else {
			continue
		}
	}
	return output
}

func count(nums *[]int, target_num int) bool {
	is_existed := false
	for _, num := range *nums {
		if num == target_num {
			is_existed = true
			*nums = append(*nums)
		}
	}
	return false
}

// @lc code=end
