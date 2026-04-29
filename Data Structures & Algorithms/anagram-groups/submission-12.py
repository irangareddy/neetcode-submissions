class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        group = {}
        for s in strs:
            frequency = getFrequency(s)
            key = tuple(sorted(frequency.items()))
            if key not in group:
                group[key] = []
            group[key].append(s)
        return list(group.values())

    
def getFrequency(s: str):
    values = {}
    for ch in s:
        values[ch] = values.get(ch, 0) + 1
    return values



        