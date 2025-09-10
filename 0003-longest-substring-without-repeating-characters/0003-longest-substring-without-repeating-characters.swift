class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let chars = Array(s) // [Character]
        var seen = Set<Character>()
        var left = 0, result = 0

        for right in left..<chars.count {
            while seen.contains(chars[right]) {
                seen.remove(chars[left])
                left += 1
            }
            seen.insert(chars[right])
            result = max(result, right - left + 1)
        }
        return result
    }
}