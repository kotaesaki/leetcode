package main

/*
 * @lc app=leetcode id=605 lang=golang
 *
 * [605] Can Place Flowers
 */

// @lc code=start
func canPlaceFlowers(flowerbed []int, n int) bool {
	if n == 0 {
		return true
	}
	count := 0
	for i, v := range flowerbed {
		if v == 1 {
			continue
		}
		left, right := i-1, i+1

		if left >= 0 {
			if flowerbed[left] == 1 {
				continue
			}
		}
		if right != len(flowerbed) {
			if flowerbed[right] == 1 {
				continue
			}
		}
		flowerbed[i] = 1
		count++
		if n == count {
			return true
		}
	}
	return false
}

// @lc code=end
