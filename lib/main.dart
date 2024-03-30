import 'package:flutter/material.dart';
import 'package:responsive_testing/responsive.dart';
import 'package:responsive_testing/set_size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Responsive().init(context);

    double screenWidget = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SetSize.getWidgetResponsiveWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: SetSize.getWidgetResponsiveHeight(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      color: Colors.red,
                      width: SetSize.getWidgetResponsiveWidth(132),
                      height: SetSize.getWidgetResponsiveHeight(48)),
                  Row(
                    children: [
                      Container(
                          color: Colors.green,
                          width: SetSize.getWidgetResponsiveWidth(34),
                          height: SetSize.getWidgetResponsiveHeight(30)),
                      SizedBox(
                        width: SetSize.getWidgetResponsiveWidth(40),
                      ),
                      Container(
                          color: Colors.green,
                          width: SetSize.getWidgetResponsiveWidth(34),
                          height: SetSize.getWidgetResponsiveHeight(30)),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: SetSize.getWidgetResponsiveHeight(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: SetSize.getWidgetResponsiveWidth(167),
                    height: SetSize.getWidgetResponsiveHeight(66),
                    child: const FittedBox(
                      child: Text('User name',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                      color: Colors.green,
                      width: SetSize.getWidgetResponsiveWidth(34),
                      height: SetSize.getWidgetResponsiveHeight(30)),
                ],
              ),
              SizedBox(
                height: SetSize.getWidgetResponsiveHeight(20),
              ),
              Container(
                color: Colors.orange,
                height: SetSize.getWidgetResponsiveHeight(211),
              ),
              SizedBox(
                height: SetSize.getWidgetResponsiveHeight(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: SetSize.getWidgetResponsiveWidth(163),
                    height: SetSize.getWidgetResponsiveHeight(39),
                    child: const FittedBox(
                      child: Text(
                        'Your weekly menu',
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    width: SetSize.getWidgetResponsiveWidth(27),
                    height: SetSize.getWidgetResponsiveHeight(27),
                  ),
                ],
              ),
              SizedBox(
                height: SetSize.getWidgetResponsiveHeight(20),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      color: Colors.teal,
                      width: SetSize.getWidgetResponsiveWidth(157),
                      height: SetSize.getWidgetResponsiveHeight(68),
                    ),
                    SizedBox(width: SetSize.getWidgetResponsiveWidth(30)),
                    Container(
                      color: Colors.teal,
                      width: SetSize.getWidgetResponsiveWidth(157),
                      height: SetSize.getWidgetResponsiveHeight(68),
                    ),
                    SizedBox(width: SetSize.getWidgetResponsiveWidth(30)),
                    Container(
                      color: Colors.teal,
                      width: SetSize.getWidgetResponsiveWidth(157),
                      height: SetSize.getWidgetResponsiveHeight(68),
                    ),
                    SizedBox(width: SetSize.getWidgetResponsiveWidth(30)),
                    Container(
                      color: Colors.teal,
                      width: SetSize.getWidgetResponsiveWidth(157),
                      height: SetSize.getWidgetResponsiveHeight(68),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SetSize.getWidgetResponsiveHeight(20),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.red,
                height: SetSize.getWidgetResponsiveHeight(41),
                child: SizedBox(
                  width: SetSize.getWidgetResponsiveWidth(211),
                  child: FittedBox(child: Text('Generate Weekly Menu')),
                ),
              ),
              SizedBox(
                height: SetSize.getWidgetResponsiveHeight(20),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.grey,
                height: SetSize.getWidgetResponsiveHeight(41),
                child: SizedBox(
                  width: SetSize.getWidgetResponsiveWidth(259),
                  child: FittedBox(child: Text('Generate Dinner Party Menu')),
                ),
              ),
              SizedBox(
                height: SetSize.getWidgetResponsiveHeight(20),
              ),
              Row(
                children: [
                  SizedBox(
                    width: SetSize.getWidgetResponsiveWidth(150),
                    height: SetSize.getWidgetResponsiveHeight(39),
                    child: const FittedBox(
                      child: Text(
                        'Best review food',
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SetSize.getWidgetResponsiveHeight(20),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      color: Colors.amber,
                      width: SetSize.getWidgetResponsiveWidth(126),
                      height: SetSize.getWidgetResponsiveHeight(138),
                    ),
                    SizedBox(width: SetSize.getWidgetResponsiveWidth(38)),
                    Container(
                      color: Colors.amber,
                      width: SetSize.getWidgetResponsiveWidth(126),
                      height: SetSize.getWidgetResponsiveHeight(138),
                    ),
                    SizedBox(width: SetSize.getWidgetResponsiveWidth(38)),
                    Container(
                      color: Colors.amber,
                      width: SetSize.getWidgetResponsiveWidth(126),
                      height: SetSize.getWidgetResponsiveHeight(138),
                    ),
                    SizedBox(width: SetSize.getWidgetResponsiveWidth(38)),
                    Container(
                      color: Colors.amber,
                      width: SetSize.getWidgetResponsiveWidth(126),
                      height: SetSize.getWidgetResponsiveHeight(138),
                    ),
                    SizedBox(width: SetSize.getWidgetResponsiveWidth(38)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
