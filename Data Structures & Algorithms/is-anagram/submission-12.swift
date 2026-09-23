class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var counts = [Character:Int]()
        if s.count != t.count {
            return false
        }

        for (p,r) in zip(s,t) {
            if p != r {
            counts[p, default: 0] += 1
            counts[r, default: 0] -= 1 
            }
        }
        for x in counts.values {
            if x != 0 {
                return false
            }
        }
        return true
    }
}
