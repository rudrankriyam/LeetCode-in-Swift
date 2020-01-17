class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var triangle = [[1], [1,1]]
        if numRows <= 0 { return [] }
        if numRows == 1 { return [[1]] }
        
        for row in 1..<numRows - 1 {
        
            var temp: [Int] = [1, 1]
            for value in 0..<triangle[row].count {
            if (value + 1) < triangle[row].count {
                temp.insert(triangle[row][value] + triangle[row][value + 1], at: 1)
            }
        }
        triangle.append(temp)
    }
    return triangle
    }
}