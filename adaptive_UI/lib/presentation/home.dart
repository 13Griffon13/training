import 'package:flutter/material.dart';
import 'package:untitled/presentation/list_data.dart';
import 'package:untitled/presentation/other.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600.0) {
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              body: TabBarView(
                children: [
                  ListData(constraints: constraints),
                  const OtherData(),
                ],
              ),
              bottomNavigationBar: const TabBar(
                tabs: [
                  Text(
                    'List',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    'Other',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
          );
        } else {
          return Scaffold(
            body: SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Row(
                children: [
                  ListData(
                    constraints: BoxConstraints(
                      maxHeight: constraints.maxHeight / 2,
                      maxWidth: constraints.maxWidth / 2,
                    ),
                  ),
                  const OtherData(),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
