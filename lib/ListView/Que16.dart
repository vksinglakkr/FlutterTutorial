import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:scroll_to_example/utils.dart';

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown,
//   ]);

//   runApp(MyApp());
// }

class Que16 extends StatelessWidget {
  static final String title = 'Scroll To Top & Bottom';

  @override
  Widget build(BuildContext context) => MainPage();
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final controller = ScrollController();
  int index = 0;

  @override
  void initState() {
    super.initState();

//    controller.addListener(listenScrolling);
  }

  // void listenScrolling() {
  //   if (controller.position.atEdge) {
  //     final isTop = controller.position.pixels == 0;

  //     if (isTop) {
  //       Utils.showSnackBar(context, text: 'Reached Start');
  //     } else {
  //       Utils.showSnackBar(context, text: 'Reached End');
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Scroll Top & Bottom"),
          centerTitle: true,
        ),
        body: buildList(),
        bottomNavigationBar: buildBottomBar(),
        floatingActionButton: FloatingActionButton(
          child: start == 0
              ? Icon(Icons.arrow_downward)
              : Icon(Icons.arrow_upward),
          onPressed: scrollDown,
        ),
      );

  Widget buildList() => ListView.builder(
        controller: controller,
        itemCount: 50,
        itemBuilder: (context, index) => ListTile(
          title: Center(
            child: Text(
              '${index + 1}',
              style: TextStyle(fontSize: 32),
            ),
          ),
        ),
      );

  Widget buildBottomBar() {
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_upward),
          label: 'Scroll To Top',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_downward),
          label: 'Scroll To Bottom',
        ),
      ],
      onTap: (int index) {
        final isSwitchingTab = this.index != index;
        setState(() => this.index = index);

        if (isSwitchingTab) return;
        final isScrollingTop = index == 0;

        if (isScrollingTop) {
          scrollUp();
        } else {
          scrollDown();
        }
      },
    );
  }

  final double start = 0;

  void scrollUp() {
    controller.jumpTo(start);
    // controller.animateTo(start, duration: Duration(seconds: 1), curve: Curves.easeIn);
  }

  void scrollDown() {
    final double end = controller.position.maxScrollExtent;

    controller.jumpTo(end);
    // controller.animateTo(end, duration: Duration(seconds: 1), curve: Curves.easeIn);
  }
}
