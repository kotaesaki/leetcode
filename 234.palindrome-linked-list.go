package main

/*
 * @lc app=leetcode id=234 lang=golang
 *
 * [234] Palindrome Linked List
 */
type ListNode struct {
	Val  int
	Next *ListNode
}

// @lc code=start
/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func isPalindrome(head *ListNode) bool {
	list := []int{}
	var hoge func(head *ListNode)
	hoge = func(head *ListNode) {
		list = append(list, head.Val)
		if head.Next == nil {
			return
		}
		hoge(head.Next)
		return
	}
	hoge(head)
	return isA(list)
}

func isA(list []int) bool {
	for i, j := 0, len(list)-1; i < j; i, j = i+1, j-1 {
		if list[i] != list[j] {
			return false
		}
	}
	return true
}

// @lc code=end
