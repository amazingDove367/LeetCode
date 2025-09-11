class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        if nums.count < 2 { return 0 }

        var left = 0, right = 0
        var pL = 0, pR = nums.count - 1

        if nums.count == 2 {
            if !nums.contains(0) { return -1 }
            for (idx, val) in nums.enumerated() {
                if val != 0 { return idx }
            }
        }

        for idx in 0..<nums.count {
            while pL < idx {
                left += nums[pL]
                pL += 1
            }

            while idx < pR {
                right += nums[pR]
                pR -= 1
            }

            if left == right { return idx } 
            
            pL = 0
            pR = nums.count - 1
            left = 0
            right = 0
        }

        return -1
    }
}