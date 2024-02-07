import 'package:flutter/material.dart';
import '../widgets/tab_controller.dart';
import '../constants/dates.dart';

class GeneralScreen extends StatelessWidget {
  const GeneralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralTabController();
  }
}

class GeneralTabController extends StatelessWidget {
  GeneralTabController({super.key});

  final List<Widget> _tabs = [
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: TabBar(
              isScrollable: true,
            indicatorColor: Colors.grey,
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            unselectedLabelColor: Colors.black,
            labelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.yellowAccent
            ),
            tabs: [
              MonthsTab(monthTitle: months[0]),
              MonthsTab(monthTitle: months[1]),
              MonthsTab(monthTitle: months[2]),
              MonthsTab(monthTitle: months[3]),
              MonthsTab(monthTitle: months[4]),
            ],
          ),
          )
        )
    );
  }
}

class MonthsTab extends StatelessWidget {
  const MonthsTab({super.key, required this.monthTitle});


  final String monthTitle;

  @override
  Widget build(BuildContext context) {
    return Tab(
        child: Align(
          widthFactor: 2.0,
          alignment: Alignment.center,
          child: Text(monthTitle),
        )
    );
  }
}