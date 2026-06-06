class Solution {
    public double findMaxAverage(int[] nums, int k) {
        int sum=0;
        for(int i=0;i<k;i++){  // sum of starting window 
            sum+=nums[i];
        }
        int maxSum=sum;   // sliding window approch 
        int sIndex=0;
        int eIndex=k;
        while(eIndex<nums.length){
            sum-=nums[sIndex];  // removing previous element
            sIndex++;

            sum+=nums[eIndex];  // adding next element 
            eIndex++;

            maxSum=Math.max(maxSum,sum);
        }
        return (double) maxSum/k;
    }
}