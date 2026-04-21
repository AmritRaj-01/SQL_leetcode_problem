class Solution {
    public int mirrorDistance(int n) {
        String s = String.valueOf(n);

        // Step 2: Reverse string
        String reversed = new StringBuilder(s).reverse().toString();

        // Step 3: Convert back to integer
        int rev = Integer.parseInt(reversed);

        // Step 4: Return absolute difference
        return Math.abs(n - rev);
    }
}