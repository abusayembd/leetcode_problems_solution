class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> complementMap = {};

    for (int i = 0; i < nums.length;i++) {
      //1st iteration i=0 
      //2nd iteration i=1
      //3nd iteration i=2

      int complement = target - nums[i];
      // 1st iteration (target = 9) - (value of index 0 = 2) = 7
      // 2nd iteration (target = 9) - (value of index 1 = 11) = -2
      // 3nd iteration (target = 9) - (value of index 2 = 7) = 2
      if (complementMap.containsKey(complement)) {
        //1st iteration complementMap is empty so don't contain 7 so hit else there store key 2, value 0
        //2nd iteration complementMap contain  key 2 value 0 but searching for -2 so hit else there it stores key 11 value 1
        //3rd iteration complementMap contain  key 2 value 0 which we searching for so it returns
        //it returns a list there will be index of complement(here key 2 is complement ) which is 0, and current index from the for loop which is 3rd iteration so 2
        //which is our final result and the condition breaks and in the result we get [0,2]
        return [complementMap[complement]!, i];
      }

      complementMap[nums[i]] = i;
      //1st iteration key = 2 , value is index 0 that is {2:0} 
      //2nd iteration key = 11 , value is index 1 that is {11:1} 
    }

    // If no solution is found, return an empty list
    return [];
  }
}


void main() {
  Solution solution = Solution();
  List<int> nums = [2,11,7, 15];
  int target = 9;
  List<int> result = solution.twoSum(nums, target);
  print(result); // Output: [0, 2]
}

