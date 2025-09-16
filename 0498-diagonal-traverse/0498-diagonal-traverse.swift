// (행) m == mat.length
// (열) n == mat[i].length
// >> 직사각형 ⭐️‼️

class Solution {
    func findDiagonalOrder(_ mat: [[Int]]) -> [Int] {
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
}