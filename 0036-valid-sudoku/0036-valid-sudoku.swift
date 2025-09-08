// 채워진 셀만 유효 검사
class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        // 1. row
        var hm1 = [Int: [Int]]()
        for (row, arr) in board.enumerated() {
            for (idx, char) in arr.enumerated() {
                if let num = char.wholeNumberValue {
                    if hm1[row, default: []].contains(num) {
                        return false
                    }
                    hm1[row, default: []].append(num)
                }
            }
        }

        // 2. column
        var arr = [Int]()
        var index = 0
        while index < board.count {
            for i in 0..<board.count {
                if let num = board[i][index].wholeNumberValue {
                    if arr.contains(num) { return false }
                    arr.append(num)
                }
            }
            index += 1
            arr = []
        }
        
        // 3. 3x3
        var row = 0, col = 0
        arr = []
        while row < board.count {
            for i in row..<row+3 {
                var intArr = board[i]
                for j in col..<col+3 {
                    if let num = intArr[j].wholeNumberValue {
                        if arr.contains(num) { return false }
                        arr.append(num)
                    }
                }
                if i == (row+3 - 1) { 
                    col += 3 
                    if col == board.count {
                        row += 3
                        col = 0
                    }
                }
            }
            arr = []
        }

        return true
    }
}