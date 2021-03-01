import 'package:core/theme.dart';
import 'package:expenses/tabs/settings_tab.dart';
import 'package:expenses/tabs/trip_tab.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:settings_ui/settings_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Expenses',
      themeMode: ThemeMode.dark,
      darkTheme: getOpenDarkTheme(),
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
  int index = 0;

  String _buildTitle(int index) {
    if (index == 0) {
      return "Trip";
    } else if (index == 1) {
      return "Settings";
    }

    return "None";
  }

  Widget _buildBody(BuildContext context, int index) {
    if (index == 0) {
      return TripTab();
    } else if (index == 1) {
      return SettingsTab();
    }

    return null;
  }

  Widget _buildFloatingActionButton(BuildContext context, int index) {
    if (index == 0) {
      return FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add expense',
        child: Icon(Icons.add),
      );
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_buildTitle(index)),
      ),
      body: PageTransitionSwitcher(
        transitionBuilder: (child, animation, secondaryAnimation) =>
            FadeThroughTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        ),
        child: _buildBody(context, index),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFloatingActionButton(context, index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (index) => setState(() => this.index = index),
        items: [
          BottomNavigationBarItem(
              label: "Trip", icon: Icon(Icons.airplanemode_active)),
          BottomNavigationBarItem(label: "Settings", icon: Icon(Icons.settings))
        ],
      ),
    );
  }
}
