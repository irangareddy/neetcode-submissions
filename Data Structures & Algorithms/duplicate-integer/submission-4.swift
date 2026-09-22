class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var counts: [Int: Int] = [:]
        for n in nums {
            if counts[n] != nil {
                return true
            } else {
                counts[n] = 1
            }
        }
        return false
    }
}
