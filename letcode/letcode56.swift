//
//  letcode56.swift
//  letcode
//
//  Created by Jianneng Chen on 2021/7/17.
//

import Foundation


class Solution {
	func merge(_ intervals: [[Int]]) -> [[Int]] {
		var res = [[Int]]()
		if intervals.count == 1{
			return intervals
		}
		var data = intervals
		data.sort { s1, s2 in
			if s1[0] != s2[0] {
				return s1[0] < s2[0]
			} else {
				return s1[1] < s2[1]
			}
			
		}
		var first = data.first![0]
		var sec = data.first![1]
		for index in 1..<data.count {
			let tmp = data[index]
			if sec < tmp[0] {
				res.append([first,sec])
				first = tmp[0]
				sec = tmp[1]
			} else {
				if tmp[1] > sec {
					sec = tmp[1]
				}
			}
		}
		res.append([first,sec])
		
		return res
	}
}
