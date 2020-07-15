import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _color;

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    int _kg = 50;
    GlobalKey _kg_txt = GlobalKey();
    return SafeArea(
        child: Scaffold(
            backgroundColor: Vx.gray800,
            body: VStack([
              Row(children: [
                VxBox(
                        child: Icon(
                  FontAwesome.male,
                  color: Vx.gray300,
                  size: 80,
                ).centered()) //"Male".text.xl4.bold.gray300.makeCentered())
                    .square(_width / 2 - 30)
                    .alignTopRight
                    .p24
                    .withRounded(value: 25)
                    .margin(EdgeInsets.all(15))
                    .shadowLg
                    .radialGradient([Vx.gray700, Vx.gray600]).make(),
                VxBox(
                        child: Icon(
                  FontAwesome.female,
                  color: Vx.gray300,
                  size: 80,
                ).centered())
                    .square(_width / 2 - 30)
                    .alignTopRight
                    .p24
                    .withRounded(value: 25)
                    .margin(EdgeInsets.all(15))
                    .shadowLg
                    .radialGradient([Vx.gray700, Vx.gray600]).make()
              ]),
              VxBox(
                      child: HStack(
                [
                  "Weight"
                      .text
                      .xl4
                      .bold
                      .gray300
                      .make()
                      .box
                      .padding(EdgeInsets.symmetric(vertical: 16))
                      .make(),
                  ":"
                      .text
                      .xl4
                      .bold
                      .gray300
                      .make()
                      .box
                      .padding(EdgeInsets.symmetric(vertical: 16))
                      .make(),
                  _kg
                      .toString()
                      .text
                      .xl4
                      .bold
                      .gray300
                      .make(key: _kg_txt)
                      .box
                      .p16
                      .make(),
                  "+"
                      .text
                      .size(50)
                      .bold
                      .gray300
                      .makeCentered()
                      .box
                      .square(65)
                      .margin(EdgeInsets.symmetric(horizontal: 5))
                      .roundedSM
                      .gray700
                      .p16
                      .shadowLg
                      .make()
                      .mdClick(() {
                    _kg++;
                    print(_kg);
                    _kg_txt.currentWidget.hide();
                  }).make(),
                  "-"
                      .text
                      .size(50)
                      .bold
                      .gray300
                      .makeCentered()
                      .box
                      .square(65)
                      .margin(EdgeInsets.symmetric(horizontal: 5))
                      .roundedSM
                      .gray700
                      .p16
                      .shadowLg
                      .make(),
                ],
                alignment: MainAxisAlignment.center,
              ))
                  .alignCenter
                  .width(_width - 30)
                  .height(_width / 2 - 30)
                  .shadowLg
                  .withRounded(value: 25)
                  .margin(EdgeInsets.all(15))
                  .radialGradient([Vx.gray700, Vx.gray600]).make()
            ]).scrollVertical()));
  }
}
