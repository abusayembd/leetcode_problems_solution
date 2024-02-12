//roman to integer
// 1. Create a map of roman to integer
// 2. Create a variable to store the result
// 3. Loop through the string
// 4. If the current character is less than the next character, subtract the current character from the result
// 5. Else, add the current character to the result
// 6. Return the result
class Solution {
  int romanToInt(String s) {
    Map<String, int> romanToIntMap = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000
    };
    int result = 0;
    for (int i = 0; i < s.length; i++) {
      print(i);
      if (i < s.length - 1 &&
          romanToIntMap[s[i]]! < romanToIntMap[s[i + 1]]!
      //explanation of this condition
      //if the current character is less than the next character
      //then subtract the current character from the result
      ) {
      //if the current character is less than the next character
        result -= romanToIntMap[s[i]]!;
        print("if less then next character $result");
      } else {
        //if the current character is not less than the next character
        //then add the current character to the result
        result += romanToIntMap[s[i]]!;
        print("if not less then next character $result");
      }
    }
    return result;
  }
}
void main() {
  final solution = Solution();
  // print(solution.romanToInt('III')); // Output: 3
  // print(solution.romanToInt('IV')); // Output: 4
  // print(solution.romanToInt('IX')); // Output: 9
  // print(solution.romanToInt('LVIII')); // Output: 58
  print(solution.romanToInt('MCMXCIV')); // Output: 1994
}