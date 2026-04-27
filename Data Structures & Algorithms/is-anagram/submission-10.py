class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) == len(t):
            frequency_s = {}
            frequency_t = {}
            for letter_s, letter_t in zip(s, t):
                frequency_s[letter_s] = s.count(letter_s)
                frequency_t[letter_t] = t.count(letter_t)
            return frequency_s == frequency_t
        else:
            return False


        