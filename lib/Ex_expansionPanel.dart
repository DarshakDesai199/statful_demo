import 'package:flutter/material.dart';

class Expansion extends StatefulWidget {
  @override
  _ExpansionState createState() => _ExpansionState();
}

class _ExpansionState extends State<Expansion> {
  bool expand = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ExpansionPanelList(
              animationDuration: Duration(milliseconds: 1000),
              children: [
                ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return ListTile(
                      title: Text("Title"),
                    );
                  },
                  isExpanded: expand,
                  canTapOnHeader: true,
                  body: ListTile(
                    title: Text("Body"),
                  ),
                )
              ],
              expansionCallback: (panelIndex, isExpanded) {
                setState(
                  () {
                    expand = !expand;
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
