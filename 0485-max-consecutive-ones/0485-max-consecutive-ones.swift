class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var maxNum = 0
        var sum = 0

        for n in nums {
            if n == 1 {
                sum += 1
            } else {
                maxNum = max(maxNum, sum)
                sum = 0
            }
        }
        return max(maxNum, sum)
    }
}