/*
[LEETCODE 1268]
URL: https://leetcode.com/problems/search-suggestions-system/description/?envType=study-plan-v2&envId=leetcode-75
* 문제
전자상거래 사이트에서는 사용자 입력에 따라 상품 이름을 제안하는 기능이 있습니다.
사용자가 검색창에 단어를 입력하면, 검색창은 상품 목록에서 제안 리스트를 표시합니다.

이 문제에서 주어진 단어 products와 검색 키워드 searchWord를 바탕으로
다음 조건을 만족하는 제안 리스트를 반환해야 합니다

사용자가 검색 키워드의 첫 번째 문자부터 하나씩 입력할 때마다,
products 리스트에서 검색 키워드로 시작하는 단어를 최대 3개까지 사전 순서로 정렬하여 반환합니다.
입력 중간에 검색 결과가 없으면 그 이후에도 모든 단계에서 빈 리스트를 반환합니다.

* 조건
1 <= products.length <= 1000
1 <= products[i].length <= 300
1 <= searchWord.length <= 1000
products[i]와 searchWord는 소문자로만 이루어져 있습니다.
products의 모든 문자열은 고유합니다.

* 예시
예제 1:
	입력: products = ["mobile","mouse","moneypot","monitor","mousepad"]
			 searchWord = "mouse"
	출력: [
			  ["mobile","moneypot","monitor"],
			  ["mobile","moneypot","monitor"],
			  ["mouse","mousepad"],
			  ["mouse","mousepad"],
			  ["mouse","mousepad"]
			 ]
	설명: 
		검색어가 "m"으로 시작하는 경우: 사전 순으로 정렬 후, "mobile", "moneypot", "monitor".
		검색어가 "mo"로 시작하는 경우: 동일한 결과.
		검색어가 "mou"로 시작하는 경우: "mouse", "mousepad".
		검색어가 "mous"로 시작하는 경우: 동일한 결과.
		검색어가 "mouse"로 시작하는 경우: 동일한 결과.
 */

List<List<String>> suggestedProducts(List<String> products, String searchWord) {
  // product 를 사전순으로 정렬
  products.sort();

  List<List<String>> result = [];
  String prefix = "";

  for (int i = 0; i < searchWord.length; i++) {
    prefix += searchWord[i];
    List<String> suggestions = [];

    // 접두사가 맞는지 이분 검색
    for (String product in products) {
      if (product.startsWith(prefix)) {
        suggestions.add(product);
      }
      if (suggestions.length == 3) break;
    }

    result.add(suggestions);
  }

  return result;
}
