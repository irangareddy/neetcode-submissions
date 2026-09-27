class Solution {
    func encode(_ strs: [String]) -> String {
        var value = ""

        for s in strs {
            value += "\(s.count)#\(s)"
        }

        return value
    }

    func decode(_ str: String) -> [String] {
        let chars = Array(str)
        var result: [String] = []
        var i = 0

        while i < chars.count {
            var j = i

            while chars[j] != "#" {
                j += 1
            }

            let length = Int(String(chars[i..<j]))!
            let start = j + 1
            let end = start + length
            let word = String(chars[start..<end])

            result.append(word)
            i = end
        }

        return result
    }
}