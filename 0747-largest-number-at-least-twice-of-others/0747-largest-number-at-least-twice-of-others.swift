class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        var sorted = nums.sorted()
        var size = nums.count - 1
        var max = sorted[size]

        if sorted[size - 1] * 2 <= max {
            return nums.firstIndex(of: max)!
        } else {
            return -1
        }
    }
}