import 'package:flutter/material.dart';

class data extends StatelessWidget {
  var myrow = ['Abrar', 'Asim', 'Sobi', 'Naeem', 'Ali'],
      B = [2, 4, 5, 6, 6, 6, 7, 4, 1, 10],
      mycolum = ['Name', 'Name', 'Name', 'Name', 'Name'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("data table"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                decoration: BoxDecoration(color: Colors.brown),
                columnSpacing: 90,
                dataRowColor: MaterialStateProperty.resolveWith(
                    (states) => Colors.black38),
                dataRowHeight: 90,
                headingRowColor: MaterialStateProperty.resolveWith(
                    (states) => Colors.yellow),
                border: TableBorder(
                    verticalInside: BorderSide(color: Colors.white, width: 9),
                    horizontalInside: BorderSide(
                      color: Colors.white,
                      width: 9,
                    ),
                    top: BorderSide(color: Colors.white, width: 9)),
                    
                columns:
                    mycolum.map((e) => DataColumn(label: Text(e))).toList(),
                rows: B
                    .map((e) => DataRow(
                        cells: myrow.map((e) => DataCell(Text('$e'))).toList()))
                    .toList(),
              )),
        ));
  }
}
