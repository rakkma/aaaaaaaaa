/// このコード以外のリソースを使いたいとき import 'リソースのパス'　と書きます。
/// material.dart の中には UI を作るための部品が入っていると思ってください。
import 'package:flutter/material.dart';

/// flutterではまずmain.dart　の main() が実行されます。
/// これは関数と呼ばれるものですが、関数については次のチャプターで詳しく解説します。
void main() {

  /// runApp(最初に表示させたいUI) と書くことでそのUIが画面に表示されます。
  runApp(
    MyApp() // MyApp() を表示したいので runApp() の中に書く
    /// ここからは UI の記述です。
    /// 画面の真ん中に 'Hello, world!' と表示させるという意味なります。
    /// Center や Text は Widget とよばれるUI部品です。
    /// Flutter では Widget を組み合わせることでUIを作ります。
    // Center(
    //   child: Text(
    //     'Hello, world!',
    //     /// left to right で ltr。左から右に読む言語はこれを指定します。
    //     /// このあとのコードでは基本的にはデフォルトで ltr になるので指定しなくても大丈夫です。
    //     textDirection: TextDirection.ltr,
    //   ),
    // ),
  );
}
/// MyAppに変更
class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      //ここに書く内容で何が表示されるか決まる。
      return MaterialApp(
        home: Scaffold(
          //ScaffoldにappBarプロパティを与える
          //AppBarが追加されることで画面上部に青いバーが表示される
          //appBarにAppbarを追加
          appBar: AppBar(
            // title プロパティに Text() Widget を与える。
              title: Text(
              'ちんちん',
             // style プロパティに TextStyle を与える。
                style: TextStyle(
                  fontWeight: FontWeight.bold, // 文字を太く
                  fontSize: 16, // 文字サイズを変更

          ),
          ),
          ),
          // body プロパティに Row を与える。
          body: Padding(
          // EdgeInsets.all(数字)
          // この括弧の中にいれた数字の分だけ、上下左右に隙間を開けられます。
          padding: const EdgeInsets.only(left: 10,top:10),
            child: Row( // Column を Row でラップ
                crossAxisAlignment: CrossAxisAlignment.start, // 上揃えにする
                children: [
                // ここにユーザーアイコンを追加する
                  CircleAvatar(
                    backgroundImage: AssetImage('image/unchi.png'),
                  ),
                  SizedBox(width: 8), // 少し隙間を開ける
                Column(
            // start: 左
            // center: 中央
            // end: 右
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
          // children プロパティに Text のリストを与える。
            // Rowはchildrenプロパティに Widgetを複数与えることで、横に並べることができる
                 children: [ //[] で囲む。 ,（カンマ）区切りで Widget を並べる
                 Text('ちんちん'),
                   SizedBox(width: 20), // width プロパティに数字を与えて横幅を決める。
                 Text('2022/06/14'),
                ],
                ),
                SizedBox(height: 20), // hight プロパティに数字を与えて高さを決める。
                Text('ちんちんを鍛えよう！')
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                ),
              ],
             ),
           ],
          ),
         ),
        ),
      );
    }
}