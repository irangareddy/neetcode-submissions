class Solution:
    def productExceptSelf(self, nums: List[int]) -> List[int]:
        res = []
        i = 0
        product = 1
        while i < len(nums):
            for index, num in enumerate(nums):
                if i == index:
                    continue
                else:
                    product *= num 
            res.append(product)
            product = 1
            i+=1
        return res

