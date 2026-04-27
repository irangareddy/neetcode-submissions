class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        # bruteforce with O(nlogn+mlogm) 
        if len(s) == len(t):
            if sorted(s) == sorted(t):
                return True
            else:
                return False
        else:
            return False


        