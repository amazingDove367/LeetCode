class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.count == 2 { return [0, 1] }

        var hashmap = [Int: [Int]]()
        for (idx, val) in nums.enumerated() {
            hashmap[val, default: []].append(idx) // ⭐️
        }

        if target % 2 == 0 {
            if let arr = hashmap[target / 2], arr.count == 2 {
                return hashmap[target / 2]!
            }
        }

        for (val, idxArr) in hashmap {
            var sub = target - val
            if let indices = hashmap[sub] {
                if sub == val { continue }
                return [idxArr[0], indices[0]]
            }
        } 

        return []
    }
}