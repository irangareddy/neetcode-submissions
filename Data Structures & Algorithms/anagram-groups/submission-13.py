class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        group = {}
        for s in strs:
            key = self.getFrequency(s)
            if key not in group:
                group[key] = []
            group[key].append(s)
        return list(group.values())

    
    def getFrequency(self, s: str):
        values = [0] * 26

        for ch in s:
            index = ord(ch) - ord('a')
            values[index] += 1

        return tuple(values)



        