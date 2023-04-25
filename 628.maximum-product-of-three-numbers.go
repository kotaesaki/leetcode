package main

import "sort"

/*
 * @lc app=leetcode id=628 lang=golang
 *
 * [628] Maximum Product of Three Numbers
 */

// @lc code=start

type Nums struct {
	num        int
	isPositive bool
}

func maximumProduct(nums []int) int {
	if len(nums) == 3 {
		return nums[0] * nums[1] * nums[2]
	}

	sortNums := make([]Nums, len(nums))
	for _, num := range nums {
		if num >= 0 {
			sortNums = append(sortNums, Nums{num: num, isPositive: true})
		} else {
			sortNums = append(sortNums, Nums{num: num * -1, isPositive: false})
		}
	}
	sort.Slice(sortNums, func(i, j int) bool {
		return sortNums[i].num > sortNums[j].num
	})

	sortNums[0].isPositive == true
}

// @lc code=end
