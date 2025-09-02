class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var set1 = Set(nums1)
        var set2 = Set(nums2)
        var result = Array<Int>()

        for num in set1 {
            if set2.contains(num) {
                result.append(num)
            }
        }
        return result
    }
}