class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var hashmap = [Character: Int]()

        for char in s {
            hashmap[char, default: 0] += 1
        }

        for (idx, char) in s.enumerated() {
            if let count = hashmap[char] {
                if count == 1 {
                    return idx
                }
            } 
        }
        return -1
    }
}