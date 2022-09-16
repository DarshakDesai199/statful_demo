import 'package:flutter/material.dart';

class ExpansionPanelDemo extends StatefulWidget {
  const ExpansionPanelDemo({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelDemo> createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 600),
                children: [
                  ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return ListTile(
                          title: Text("Title"),
                        );
                      },
                      isExpanded: expanded,
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text("Body"),
                      )),
                ],
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    expanded = !expanded;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
