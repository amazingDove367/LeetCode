// 반복하다가, 처음이랑 같은 수이면 false 

class Solution {
    func isHappy(_ n: Int) -> Bool {
        var num = 0
        var hashset = Set<Int>()

        if n == 1 { return true }

        for digit in String(n) {
            num += digit.wholeNumberValue! * digit.wholeNumberValue!
        }
        hashset.insert(num)

        while num != 1 {
            var temp = 0

            for digit in String(num) {
                temp += digit.wholeNumberValue! * digit.wholeNumberValue!
            }

            if hashset.contains(temp) { return false }
            hashset.insert(temp)
            num = temp
        }
        return true
    }
}