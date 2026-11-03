class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prefix = [Int]()
        var suffix = [Int]()
        var currentProduct = 1
        for num in nums {
            result.append(currentProduct)
            currentProduct *= num
        }
        return result
    }
}
