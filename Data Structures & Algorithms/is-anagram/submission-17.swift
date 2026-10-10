class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }
        var counts = [Character:Int]()

        for (p, r) in zip(s, t) {
            counts[p, default: 0] += 1
            counts[r, default: 0] -= 1
        }
        
        return counts.values.allSatisfy { $0 == 0 }
    }
}
