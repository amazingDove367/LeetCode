class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var map1 = [Int: Int]()
        var map2 = [Int: Int]()
        
        for m in nums1 {
            map1[m, default: 0] += 1
        }

        for m in nums2 {
            map2[m, default: 0] += 1
        }

        var result = [Int]()
        for (k, v) in map1 {
            if let val = map2[k] {
                for i in 0..<min(v, val) {
                    result.append(k)
                }
            }
        }

        return result
    }
}