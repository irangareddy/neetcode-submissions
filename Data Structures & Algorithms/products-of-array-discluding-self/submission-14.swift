class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 1, count: nums.count)

        var prefix = 1
        for i in nums.indices {
            result[i] = prefix
            if i < nums.count - 1 {
                prefix *= nums[i]
            }
        }

        var postfix = 1
        for i in nums.indices.reversed() {
            result[i] *= postfix
            if i > 0 {
                postfix *= nums[i]
            }
        }

        return result
    }
}