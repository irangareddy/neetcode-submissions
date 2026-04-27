class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t):
            return False
        else:
            source = {}
            for char in s:
                if char in source:
                    source[char] += 1
                else:
                    source[char] = 1
            for char in t:
                if char in source and source[char] != 0:
                    source[char] -= 1
                else:
                    return False
        return True
