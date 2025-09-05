class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var hashmap = [String: [String]]()
        var result = [[String]]()

        for s in strs {
            hashmap[String(s.sorted()), default: []].append(s)    
        }

        for (k, v) in hashmap {
            result.append(v)
        }
        return result
    }
}