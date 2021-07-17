//
//  letcode-offer42.swift
//  letcode
//
//  Created by Jianneng Chen on 2021/7/17.
//

import Foundation


class Solution {
	func maxSubArray(_ nums: [Int]) -> Int {
		var res = Int.min
		var tmp = 0
		nums.forEach { num in
			tmp = max(tmp + num, num)
			res = max(res, tmp)
		}
		return res
	}
}
