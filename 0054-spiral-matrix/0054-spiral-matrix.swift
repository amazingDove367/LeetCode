class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        var m = matrix.count
        guard m > 0 else { return [] }

        var n = matrix[0].count
        if n == 1 || m == 1 {
            return matrix.flatMap { $0 }
        }

        var result = [Int]()
        var row = 0, col = 0
        var newM = m, newN = n
        var limitR = 0, limitC = 0
        var dir = 1 // 1: ➡️, 2: ⬇️, 3: ⬅️, 4: ⬆️

        while result.count < m * n {
            result.append(matrix[row][col])

            if dir == 1 { // ➡️
                if col == newN - 1 { // 오른쪽 벽
                    row += 1; dir = 2; newN -= 1; limitR += 1
                } else {
                    col += 1
                }
            } else if dir == 2 { // ⬇️
                if row == newM - 1 { // 바닥
                    col -= 1; dir = 3; newM -= 1
                } else {
                    row += 1
                }
            } else if dir == 3 { // ⬅️
                if col == limitC { // 왼쪽 벽 
                    row -= 1; dir = 4; limitC += 1
                } else {
                    col -= 1
                }
            } else { // ⬆️
                if row == limitR { // 천장 
                    col += 1; dir = 1
                } else {
                    row -= 1
                }
            }
        }
        return result
    }
}