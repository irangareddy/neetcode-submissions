class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []

        for char in s {
            if char == "(" || char == "[" || char == "{" {
                stack.append(char)
            } else {
                if stack.isEmpty {
                    return false
                }

                let top = stack.removeLast()

                if (char == ")" && top != "(") ||
                   (char == "]" && top != "[") ||
                   (char == "}" && top != "{") {
                    return false
                }
            }
        }

        return stack.isEmpty
    }
}
