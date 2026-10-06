class Solution:
    def isPalindrome(self, s: str) -> bool:

        cleaned = ""

        # Step 1: Clean the string
        for value in s:
            if value.isalnum():
                cleaned += value.lower()

        # Step 2: Two pointers
        left = 0
        right = len(cleaned) - 1

        # Step 3: Compare from both ends
        while left < right:

            if cleaned[left] != cleaned[right]:
                return False

            left += 1
            right -= 1

        # Step 4: If we never found a mismatch
        return True