import 'package:flutter/material.dart';
import 'package:self_introduction/homepage.dart';

class MyTopPage extends StatelessWidget {
  const MyTopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 250),
        child: Center(
          child: Column(
            children: const [
              GreenIcon(),
            ],
          ),
        ),
      ),
    );
  }
}

class GreenIcon extends StatelessWidget {
  const GreenIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyHomePage(),
          ),
        );
      },
      icon: const Icon(Icons.account_box_rounded),
      iconSize: 150,
      color: Colors.green,
    );
  }
}


//MEMO
// onPressed: () {
// Navigator.push( Navigator.pushメソッドを使って次のページに遷移させることができる
// context,　contextは現在のページの情報などを持つオブジェクト
// MaterialPageRoute(　MaterialPageRouteウィジェットで今のページ(context)から次のページ(MyHomePage)に遷移するよと記述することができ、builderメソッドで表示させている。
// builder: (context) => const MyHomePage(),
// ),