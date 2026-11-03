class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 1, count: nums.count)
        var prefix = 1

        // Prefix products
        for (index, num) in nums.enumerated() {
            result[index] = prefix

            if index < nums.count - 1 {
                prefix *= num
            }
        }

        // Suffix products
        var suffix = 1
        for index in nums.indices.reversed() {
            result[index] *= suffix

            if index > 0 {
                suffix *= nums[index]
            }
        }

        return result
    }
}