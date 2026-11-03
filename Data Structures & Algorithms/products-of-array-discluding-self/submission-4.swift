class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prefix = [Int]()
        var suffix = [Int]()
        var currentProduct = 1
        for num in nums {
            prefix.append(currentProduct)
            currentProduct *= num
        }
        currentProduct = 1
        for num in nums.reversed() {
            suffix.append(currentProduct)
            currentProduct *= num
        }
        var result = [Int]()
        for (p,s) in zip(prefix, suffix.reversed()) {
            result.append(p*s)
        }
        return result
    }
}
