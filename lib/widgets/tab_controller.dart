import 'package:flutter/material.dart';
import '../screens/general.dart';

class MyTabController extends StatelessWidget {

  MyTabController({super.key});

  final List<Widget> _tabs = [
    const StatsScreen(),
    const GeneralScreen(),
    const NotesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(
      colorScheme: theme.colorScheme.copyWith(
        surfaceVariant: Colors.transparent,
      ),
    ),
      child: DefaultTabController(
        length: _tabs.length,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            //forceMaterialTransparency: true,
            // backgroundColor: Colors.grey,
            elevation: 0,
            title: TabBar(
              indicatorColor: Colors.grey,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              unselectedLabelColor: Colors.black,
              labelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.yellowAccent
              ),
              tabs: const [
                MyTab(tabText: "Stats"),
                MyTab(tabText: "General"),
                MyTab(tabText: "Notes"),
              ],
            ),
          ),
          body: TabBarView(
            children: _tabs,
          ),
        ),
      )
    );
  }
}

class MyTab extends StatelessWidget{

  const MyTab({super.key, required this.tabText});

  final String tabText;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Align(
      alignment: Alignment.center,
      child: Text(tabText),
      )
    );
  }
}

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Screen'),
    );
  }
}


class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Screen'),
    );
  }
}
