import 'dart:math';

class Logic {

  String battle(int userItem) {
    Random random = Random();
    int villainItem = random.nextInt(3);
    String result;
    Map<String, int> itemList = {"가위": 0, "바위": 1, "보": 2};

    if (villainItem == userItem) {
      result = "무승부!";
    } else if (villainItem == itemList["가위"] && userItem == itemList["바위"]) {
      result = "승리!";
    } else if (villainItem == itemList["가위"] && userItem == itemList["보"]) {
      result = "패배!";
    } else if (villainItem == itemList["바위"] && userItem == itemList["보"]) {
      result = "승리!";
    } else if (villainItem == itemList["바위"] && userItem == itemList["가위"]) {
      result = "패배!";
    } else if (villainItem == itemList["보"] && userItem == itemList["바위"]) {
      result = "패배!";
    } else if (villainItem == itemList["보"] && userItem == itemList["가위"]) {
      result = "승리!";
    } else {
      result = "가위, 바위, 보 중 선택하세요";
    }
    return result;
  }
}
