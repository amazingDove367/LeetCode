class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var longest = strs[0] 
        for i in 1..<strs.count {
            let common = longest.commonPrefix(with: strs[i])
            if common.count < longest.count { 
                longest = common 
            } 
        }  
        return longest
    }
}