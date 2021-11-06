import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/logic.dart';

class View extends StatefulWidget {
  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {

  Logic logic = Logic();
  String btnText = "게임 시작!";
  bool isPlay = false;

  @override
  Widget build(BuildContext context) {
    List<Widget> userItemBox = [
      Container(
        width: MediaQuery.of(context).size.width / 3,
        height: 150,
        decoration: const BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("image/scissors.png"))),
      ),
      Container(
        width: MediaQuery.of(context).size.width / 3,
        height: 150,
        decoration: const BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("image/rock.png"))),
      ),
      Container(
        width: MediaQuery.of(context).size.width / 3,
        height: 150,
        decoration: const BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("image/paper.png"))),
      )
    ];

    List<Widget> botItemBox = [
      Container(
        width: MediaQuery.of(context).size.width / 3,
        height: 150,
        decoration: const BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("image/paper_bot.png"))),
      ),
      Container(
        width: MediaQuery.of(context).size.width / 3,
        height: 150,
        decoration: const BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("image/rock_bot.png"))),
      ),
      Container(
        width: MediaQuery.of(context).size.width / 3,
        height: 150,
        decoration: const BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("image/scissors_bot.png"))),
      ),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff0f3825),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: botItemBox.map<Widget>((e) => e).toList()),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xff0f3825),
                    image: DecorationImage(
                        image: AssetImage(
                      "image/what_bot.png",
                    ))),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff0f3825),
                child: TextButton(
                  child: Text(
                    isPlay ? btnText = "한번 더!" : "게임 시작!",
                    style: const TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  onPressed: () {
                    //logic.battle(userItemBox[0])
                    setState(() {});
                    isPlay = !isPlay;
                  },
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xff0f3825),
                    image: DecorationImage(
                        image: AssetImage(
                      "image/what.png",
                    ))),
              ),
            ),
            Row(children: userItemBox.map<Widget>((e) => e).toList())
          ],
        ),
      ),
    );
  }
}

