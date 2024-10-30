# Algorithm-in-TomorrowLearningCamp

#Day1
### 문제1. 문자열의 최대 공약수(Greatest Common Divisor of Strings)
[LEETCODE 1071](https://leetcode.com/problems/greatest-common-divisor-of-strings/description/?envType=study-plan-v2&envId=leetcode-75)
* 문제
주어진 두 문자열 str1과 str2의 가장 큰 공약수(GCD)를 찾아야 합니다.
두 문자열의 공약수는, 두 문자열을 여러 번 반복해서 만들 수 있는 문자열입니다.
예를 들어, "ABCABC"와 "ABC"는 공통적으로 "ABC"로 나뉠 수 있습니다.

* 조건
1. 두 문자열 str1, str2는 각각 길이 1 이상 1000 이하입니다.
2. 문자열은 대문자로만 이루어져 있습니다.

* 예시
1. 입력: str1 = "ABCABC", str2 = "ABC" 출력: "ABC"

2. 입력: str1 = "ABABAB", str2 = "ABAB" 출력: "AB"

3. 입력: str1 = "LEET", str2 = "CODE" 출력: "" (공통 부분이 없음)

4. 입력: str1 = "ABABABAB", str2 = "ABAB" 출력: "ABAB"

### 문제2. 가장 많은 사탕을 가지고 있는 아이들(Kids With the Greatest Number of Candies)
[LEETCODE 1431](https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/description/?envType=study-plan-v2&envId=leetcode-75)
* 문제
각 아이에게 주어진 사탕의 개수를 나타내는 정수 배열 candies가 주어집니다.
당신은 각 아이에게 추가로 줄 수 있는 사탕의 개수를 나타내는 정수 extraCandies도 갖고 있습니다.
각 아이가 가진 사탕의 수에 extraCandies를 더했을 때,
그 아이가 가장 많은 사탕을 가진 아이 중 하나가 될 수 있는지를 확인하세요.

결과로 각 아이에 대해 true 또는 false를 담은 배열을 반환하세요.
만약 그 아이가 extraCandies를 더했을 때,
그가 가장 많은 사탕을 가진 아이가 될 수 있다면 true, 그렇지 않다면 false를 반환합니다.

* 조건
1. candies.length는 2 이상 100 이하입니다.
2. candies[i]는 1 이상 100 이하입니다.
3. extraCandies는 1 이상 50 이하입니다.

* 예시
1. 입력: candies = [2,3,5,1,3], extraCandies = 3 출력: [true, true, true, false, true]
	설명:
	1번 아이에게 3개의 사탕을 추가하면 5개가 됩니다. 이는 가장 많은 사탕 수(5)와 같습니다.
	2번 아이에게 3개의 사탕을 추가하면 6개가 되어 가장 많은 사탕을 가진 아이가 됩니다.
	3번 아이는 이미 가장 많은 사탕을 가지고 있습니다.
	4번 아이는 사탕을 추가해도 최대 사탕 수에 도달하지 못합니다.
	5번 아이는 3개의 사탕을 추가하면 6개가 되어 가장 많은 사탕을 가진 아이가 됩니다.

2. 입력: candies = [4,2,1,1,2], extraCandies = 1 출력: [true, false, false, false, false]

3. 입력: candies = [12,1,12], extraCandies = 10 출력: [true, false, true]

### 문제3. 꽃 심기(Can Place Flowers)
[LEETCODE 605](https://leetcode.com/problems/can-place-flowers/description/?envType=study-plan-v2&envId=leetcode-75)
* 문제
당신은 꽃을 심으려고 합니다. 꽃은 서로 인접한 땅에 심을 수 없습니다.
꽃밭은 이진 배열 flowerbed로 표현되며, 0은 빈 자리, 1은 이미 꽃이 심어진 자리를 나타냅니다.
당신은 추가로 n개의 꽃을 심고 싶습니다.
주어진 규칙에 따라 새로운 꽃을 심을 수 있는지 여부를 반환하세요.

* 조건
1. flowerbed는 길이가 1 이상 2 * 10^4 이하인 배열입니다.
2. flowerbed[i]는 0 또는 1입니다.
3. 꽃은 인접한 칸에 심을 수 없습니다.
4. n은 1 이상 flowerbed 길이 이하입니다.

* 예시
1. 입력: flowerbed = [1,0,0,0,1], n = 1 출력: true
	설명: 2번째 위치에 꽃을 심을 수 있습니다.

2. 입력: flowerbed = [1,0,0,0,1], n = 2 출력: false
	설명: 2번째 위치에 하나의 꽃만 심을 수 있기 때문에 두 개의 꽃을 심을 수 없습니다.

### 문제4. 문자열의 역모음(Reverse Vowels of a String)
[LEETCODE 345](https://leetcode.com/problems/reverse-vowels-of-a-string/description/?envType=study-plan-v2&envId=leetcode-75)
* 문제
주어진 문자열 s에서 모음(‘a’, ‘e’, ‘i’, ‘o’, ‘u’, 대소문자 구분 없음)들만 뒤집어서 문자열을 반환하세요.
다른 문자는 원래 위치에 그대로 남아 있어야 합니다.

* 조건
1. s.length는 1 이상 3 * 10^5 이하입니다.
2. 문자열은 ASCII 문자로만 이루어져 있습니다.


* 예시
1. 입력: s = "hello" 출력: "holle"
	설명: 'e'와 'o'가 뒤집혀서 'holle'이 됩니다.

2. 입력: s = "leetcode" 출력: "leotcede"
	설명: 'e', 'o', 'e'가 뒤집혀서 'leotcede'가 됩니다.

### 문제5. 0 이동시키기(Move Zeroes)
[LEETCODE 283](https://leetcode.com/problems/move-zeroes/description/?envType=study-plan-v2&envId=leetcode-75)
* 문제
주어진 정수 배열 nums에서 모든 0을 배열의 끝으로 이동시키고, 나머지 숫자는 원래의 상대적인 순서를 유지하도록 하세요.
이 작업은 배열을 수정하여 수행해야 하며, 추가적인 배열을 사용하지 않고 수행해야 합니다.

* 조건
1. 1 <= nums.length <= 10^4
2. -2^31 <= nums[i] <= 2^31 - 1 
(2^31 -> int형의 범위) -21억 ~ 21억

* 예시
1. 입력: nums = [0, 1, 0, 3, 12] 출력: [1, 3, 12, 0, 0]
	설명: 모든 0이 배열의 끝으로 이동하고, 나머지 숫자는 순서를 유지합니다.

2. 입력: nums = [0] 출력: [0]
	설명: 배열에 0만 존재할 경우 변하지 않습니다.

### 문제6. 부분 수열(Is Subsequence)
[LEETCODE 392](https://leetcode.com/problems/is-subsequence/description/?envType=study-plan-v2&envId=leetcode-75)
* 문제
두 개의 문자열 s와 t가 주어졌을 때,
문자열 s가 t의 부분 수열인지 확인하는 함수를 작성하세요.
부분 수열이란 문자열에서 일부 문자를 제거하고 나머지 문자의 상대적인 순서를 유지하여 만들 수 있는 문자열을 의미합니다.

* 조건
1. 0 <= s.length <= 100
2. 0 <= t.length <= 10^4
3. 문자열 s와 t는 모두 소문자로 구성됩니다.

* 예시
1. 입력: s = "abc", t = "ahbgdc" 출력: true
	설명: s는 t에서 a -> b -> c 순서로 존재하므로 부분 수열입니다.

2. 입력: s = "axc", t = "ahbgdc" 출력: false
	설명: t에는 a -> x -> c 순서로 존재하지 않으므로 부분 수열이 아닙니다.
