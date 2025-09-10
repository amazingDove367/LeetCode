class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var sMap = [Character: Int]()
        var result = 0

        for char in stones {
            sMap[char, default: 0] += 1
        }

        for char in jewels {
            if let num = sMap[char] {
                result += num
            }
        }
        return result
    }
}