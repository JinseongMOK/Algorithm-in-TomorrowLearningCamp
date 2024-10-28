class Solution {
  String gcdOfStrings(String str1, String str2) {
    if (str1 + str2 != str2 + str1) {
        return '';
    }
    int gcd(int a, int b){
        if(b == 0) {
            return a;
        }
        else {
            return gcd(b, a%b);
        }
    }
    int gcdlength = gcd(str1.length, str2.length);
    return str1.substring(0, gcdlength);
  }
}
