class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var lenA = a.count - 1, lenB = b.count - 1
        var strA = a, strB = b
        var result: String = ""

        if lenA > lenB {
            strB = String(repeating: "0", count: lenA - lenB) + strB
        } else if lenA < lenB {
            strA = String(repeating: "0", count: lenB - lenA) + strA
        }
    
        var accum = 0 // 앞자리 누적 
        var insertNum = -1
        for i in stride(from: strA.count - 1, through: 0, by: -1) {
            // String 에서의 Index 접근
            let idxA = strA.index(strA.startIndex, offsetBy: i)
            let idxB = strB.index(strB.startIndex, offsetBy: i)

            let intA = (strA[idxA] == "1") ? 1 : 0
            let intB = (strB[idxB] == "1") ? 1 : 0

            let sum = intA + intB + accum

            if sum == 3 {
                accum = 1; insertNum = 1
            } else if sum == 2 {
                accum = 1; insertNum = 0
            } else if sum == 1 {
                accum = 0; insertNum = 1
            } else  { // 0
                accum = 0; insertNum = 0
            }

            if i == 0 && accum != 0 {
                result.insert(contentsOf: "\(accum)" + "\(insertNum)", at: result.startIndex)
                return result
            }
            // 문자열에 Character 아닌 문자열 넣고 싶을 때 
            result.insert(contentsOf: "\(insertNum)", at: result.startIndex)
        }
        return result
    }
}