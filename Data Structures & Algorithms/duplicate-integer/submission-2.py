class Solution:
    def hasDuplicate(self, nums: List[int]) -> bool:
        arr = {}
        for n in nums:
            if n in arr.keys():
                return True
            else:
                arr[n] = n
        return False
