class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var indexByValue = [Int: Int]()
        indexByValue.reserveCapacity(nums.count)

        for (idx, val) in nums.enumerated() {
            var need = target - val
            if let v = indexByValue[need] { 
                // nums: [3, 2, 4] 가능한 이유는
                // idx 0 일때, 아직 indexByValue 에 아무것도 없음 따라서, 지나감
                return [idx, v]
            } 
            indexByValue[val] = idx
        }
        return []
    }
}

// class Solution {
//     func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//         if nums.count == 2 { return [0, 1] }

//         var hashmap = [Int: [Int]]()
//         for (idx, val) in nums.enumerated() {
//             hashmap[val, default: []].append(idx) // ⭐️
//         }

//         if target % 2 == 0 {
//             if let arr = hashmap[target / 2], arr.count == 2 {
//                 return hashmap[target / 2]!
//             }
//         }

//         for (val, idxArr) in hashmap {
//             var sub = target - val
//             if let indices = hashmap[sub] {
//                 if sub == val { continue }
//                 return [idxArr[0], indices[0]]
//             }
//         } 

//         return []
//     }
// }
