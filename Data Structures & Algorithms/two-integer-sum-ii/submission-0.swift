
class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1

        while left < right {
            let sum = numbers[left] + numbers[right]

            if sum == target {
                // Problem asks for 1-indexed positions
                return [left + 1, right + 1]
            } else if sum < target {
                // Need a larger sum
                left += 1
            } else {
                // Need a smaller sum
                right -= 1
            }
        }

        return []
    }
}