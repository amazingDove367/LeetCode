class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var start = 0, end = numbers.count - 1

        while start < end {            
            let sum = numbers[start] + numbers[end]
            if sum == target { return [start + 1, end + 1] }
            if sum > target { 
                end -= 1 
            } else if sum < target { 
                start += 1
            }
        }

        return []
    }
}