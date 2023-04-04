package main

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
	for i := 0; i < len(*nums); i++ {
		if (*nums)[i] == target_num {
			is_existed = true
			*nums = append((*nums)[:i], (*nums)[i+1:]...)
			i--
		}
	}
	return is_existed
}

// @lc code=end
