class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        guard numRows > 1 else { return [[1]] }

        var result = Array(repeating: [Int](), count: numRows)

        for i in 0..<numRows {
            result[i] = Array(repeating: 1, count: i+1) // 공간 확보 ⭐️
            
            if i >= 2 {
                for j in 1..<i {
                    result[i][j] = result[i-1][j-1] + result[i-1][j]
                }
            }
        }

        return result
    }
}

//        10         11
//    20    21(=10+11) 22
//   30 31(=20+21)  32(=21+22)  33