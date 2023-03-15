package main

import "fmt"

/*
 * @lc app=leetcode id=257 lang=golang
 *
 * [257] Binary Tree Paths
 */

type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}

// @lc code=start
/**
 * Definition for a binary tree node.
 */
func binaryTreePaths(root *TreeNode) []string {
	// var result []string
	// var hoge func(strResult []string, node *TreeNode) []string

	// hoge = func(strSlice []string, node *TreeNode) []string {
	// 	if node.Left == nil && node.Right == nil {
	// 		return strSlice
	// 	}
	// 	if node.Left != nil && node.Right == nil {
	// 		strSlice = append(strSlice, strconv.Itoa(node.Val))
	// 		return hoge(strSlice, node.Left)
	// 	}
	// 	if node.Right != nil && node.Left == nil {
	// 		strSlice = append(strSlice, strconv.Itoa(node.Val))
	// 		return hoge(strSlice, node.Right)
	// 	}
	// }
	// return hoge()

	return binaryTreePathsWithString(root, "")
}

func binaryTreePathsWithString(node *TreeNode, str string) []string {
	if node == nil {
		return []string{}
	}

	if node.Left == nil && node.Right == nil {
		str += fmt.Sprint(node.Val)
		return []string{str}
	}

	str += fmt.Sprintf("%v->", node.Val)

	return append(
		binaryTreePathsWithString(node.Left, str),
		binaryTreePathsWithString(node.Right, str)...,
	)
}

// @lc code=end
