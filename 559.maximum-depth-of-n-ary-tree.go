package main

/*
 * @lc app=leetcode id=559 lang=golang
 *
 * [559] Maximum Depth of N-ary Tree
 */
type Node struct {
	Val      int
	Children []*Node
}

// @lc code=start
/**
 * Definition for a Node.
 * type Node struct {
 *     Val int
 *     Children []*Node
 * }
 */

func maxDepth(root *Node) int {
	if root == nil {
		return 0
	}
	max := 0
	for _, child := range root.Children {
		depth := maxDepth(child)
		if depth > max {
			max = depth
		}
	}
	return max + 1
}

// @lc code=end
