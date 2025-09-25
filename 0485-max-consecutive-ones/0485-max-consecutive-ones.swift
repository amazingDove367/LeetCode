class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var maxNum = 0, sum = 0
        var start = 0
        
        while start < nums.count {
            if nums[start] == 0 {
                maxNum = max(maxNum, sum)
                sum = 0
            } else {
                sum += 1
            }
            
            start += 1
        }

        return max(maxNum, sum)
    }
}