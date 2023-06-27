import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  final BoxConstraints constraints;

  List<String> get data => [
        'Item 1',
        'Item 2',
        'Item 3',
        'Item 4',
        'Item 5',
        'Item 6',
        'Item 7',
        'Item 8',
        'Item 9',
      ];

  const ListData({
    super.key,
    required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: constraints,
      child: constraints.maxWidth >= 400
          ? GridView.count(
              crossAxisCount: 3,
              children: data
                  .map((e) => Container(
                        color: Colors.grey,
                        width: 120.0,
                        height: 120.0,
                        child: Text(e),
                      ))
                  .toList(),
            )
          : ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, item) {
                return Container(
                  color: Colors.grey,
                  width: 120.0,
                  height: 60.0,
                  child: Text(data[item]),
                );
              },
            ),
    );
  }
}
