/*
[LEETCODE 121]
URL: https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/?envType=study-plan-v2&envId=top-interview-150
* ��
��� �� �� �� prices�� ��� � � �� � � ��� �� � �� �� ��� ���� �����.
�� � � �� ��� ��� �� ��� ���� ���.

* ��
1. 1 <= prices.length <= 10^5
2. 0 <= prices[i] <= 10^4

* ��
�� 1
	��: prices = [7,1,5,3,6,4]
	��: 5
	��: ��� 1� �� 6� �� ��� 5� ���. (6 - 1 = 5)

�� 2
	��: prices = [7,6,4,3,1]
	��: 0
	��: � �� ��� �� � � �� ��� ����. (�� ��� 0)
 */

class Solution {
    int maxProfit(List<int> prices) {
        int minPrice = double.maxFinite.toInt(); // �ִ밪���� �ʱ�ȭ
        int maxProfit = 0; // �ִ� ���� �ʱ�ȭ

        for (int price in prices) {
            if (price < minPrice) {
                minPrice = price; // �ּ� ���� ������Ʈ
            } else {
                maxProfit = max(maxProfit, price - minPrice); // �ִ� ���� ���
            }
        }

        return maxProfit;
    }
}
