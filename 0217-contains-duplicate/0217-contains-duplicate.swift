class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var hashset = Set<Int>()
        
        for num in nums {
            if hashset.contains(num) {
                return true
            } else {
                hashset.insert(num)
            }
        }
        return false
    }
}