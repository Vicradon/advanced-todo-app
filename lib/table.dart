import 'package:flutter/Material.dart';

class Tab extends StatelessWidget {
  final TextStyle tFont = TextStyle(fontSize: 30);
  final _items = <String>["School", "Church", "Home"];
  // final List<String> widgs = _items.map((e) => print(e));
 


  @override
  Widget build(BuildContext context) {
    return Table(
      defaultColumnWidth: const FlexColumnWidth(1.0),
      defaultVerticalAlignment: TableCellVerticalAlignment.top,
      children: [
        TableRow(
          children: [
            TableCell(child: Text("stuff", style: tFont)),
            TableCell(child: Text("stuffy", style: tFont)),
          ],
        ),
        TableRow(
          children: [
            TableCell(child: Text("Some other stuff", style: tFont)),
            TableCell(child: Text("My Stuff", style: tFont)),
          ],
        ),
      ],
    );
  }
}
