class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        var currentProduct = 1
        for (index, num) in nums.enumerated() {
            result.append(currentProduct)
            if index < nums.count {
                currentProduct *= num
            }
            
        }
        for index in nums.indices.reversed() {
            print(index)
            result.append(currentProduct)
            currentProduct *= num
        }
        return result
    }
}
