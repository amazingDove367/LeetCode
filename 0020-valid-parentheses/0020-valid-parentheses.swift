class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        var chars = Array(s) // ⭐️

        for char in chars {
            if char == "(" || char == "{" || char == "[" {
                stack.append(char)
            } else {
                guard let last = stack.popLast() else {
                    return false 
                }

                if (char == ")" && last != "(") ||
                   (char == "]" && last != "[") ||
                   (char == "}" && last != "{") {
                    return false 
                   }
            }
        }
        
        return stack.isEmpty // ⭐️
    }
}