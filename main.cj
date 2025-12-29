class Solution {
    public func countNegatives(grid: Array<Array<Int64>>): Int64 {
        var count: Int64 = 0 // Обязательно инициализируем
        
        // В Cangjie циклы по индексам пишутся через диапазоны
        for (i in 0..grid.size) {
            for (j in 0..grid[i].size) {
                if (grid[i][j] < 0) {
                    count++
                }
            }
        }
        
        return count
    }
}

main() {
    let sol = Solution()
    let matrix = [
        [4, 3, 2, -1],
        [3, 2, 1, -1]
    ]
    println(sol.countNegatives(matrix))
}