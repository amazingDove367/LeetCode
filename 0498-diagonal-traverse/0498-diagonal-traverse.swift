// (행) m == mat.length
// (열) n == mat[i].length
// >> 직사각형 ⭐️‼️

class Solution {
    // 방법 1: 대각선 합 (i+j) 그룹핑 
    func findDiagonalOrder_1(_ mat: [[Int]]) -> [Int] {
        let m = mat.count
        guard m > 0 else { return [] }

        let n = mat[0].count
        if n == 1 || m == 1 { 
            return mat.flatMap { $0 }
        }

        var buckets = Array(repeating: [Int](), count: m + n - 1)

        for i in 0..<m {
            for j in 0..<n {
                let s = i + j
                if s % 2 == 0 {
                    buckets[s].insert(mat[i][j], at: 0)
                } else {
                    buckets[s].append(mat[i][j])
                }
            }
        }

        return buckets.flatMap { $0 }
    }

    // 방법 2: 방향 토글 방식
    func findDiagonalOrder(_ mat: [[Int]]) -> [Int] {
        let m = mat.count
        guard m > 0 else { return [] }

        let n = mat[0].count
        if n == 1 || m == 1 {
            return mat.flatMap { $0 }
        }

        var result = [Int]()
        result.reserveCapacity(m * n)

        var row = 0, col = 0
        var dir = 1 // 1: ↗️, -1: ↙️

        while result.count < m * n {
            result.append(mat[row][col])

            if dir == 1 { // 1: ↗️
                // ⭐️ 오른쪽 벽 -> 윗쪽 벽 (순서 중요⭐️)
                // 오른쪽 벽일때; row +1 해야하니깐, 계속 col+1 하다가 
                if col == n - 1 { // 오른쪽 벽 
                    row += 1; dir = -1
                } else if row == 0 { // 윗쪽 천장
                    col += 1; dir = -1
                } else {
                    row -= 1; col += 1
                }
            } else { // -1: ↙️
                // ⭐️ 아래쪽 벽 -> 왼쪽 벽 (순서 중요⭐️)
                // 아래쪽 바닥에 닿일때; col +1 해야하니깐, 계속 row+1 하다가
                if row == m - 1 { // 아래쪽 바닥
                    col += 1; dir = 1
                } else if col == 0 { // 왼쪽 벽
                    row += 1; dir = 1
                } else {
                    row += 1; col -= 1
                }
            }
        }
        return result
    }
}