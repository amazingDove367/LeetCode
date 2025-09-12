class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var size = digits.count - 1
        var result = digits
        
        if digits[size] == 9 {
            if size != 0 && digits[size - 1] != 9 {
                result[size - 1] += 1
                result[size] = 0
                return result
            }

            var hSet = Set(digits)
            if hSet.count == 1 && hSet.contains(9) {
                result = Array(repeating: 0, count: size + 2)
                result[0] = 1
                return result
            }

            var sum = 0
            for (idx, val) in digits.enumerated() {
                sum += val * Int(pow(10.0, Double(size - idx)))
            }
            sum += 1

            return String(sum).compactMap { Int(String($0)) } 
        }
        
        result[size] += 1
        return result
    }
}