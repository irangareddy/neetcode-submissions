class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var seen = [Int: Int]()

        for (index, num) in nums.enumerated() {
            let needed = target - num

            if let previousIndex = seen[needed] {
                return [previousIndex, index]
            }

            seen[num] = index
        }

        return []
    }
}