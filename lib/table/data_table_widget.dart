import 'package:data_table_2/data_table_2.dart';
import 'package:example/model/sells.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

/// Example without datasource
class DataTableWidget extends StatelessWidget {
  const DataTableWidget({super.key, required this.people});

  final List<Sell> people;

  @override
  Widget build(BuildContext context) {
    List<Sell> peopleReversed = List.from(people.reversed);

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
      ),
      child: DataTable2(
        columnSpacing: 8,
        horizontalMargin: 8,
        minWidth: 500,
        smRatio: 0.75,
        lmRatio: 1.5,
        columns: const [
          DataColumn2(
            size: ColumnSize.L,
            label: Text('ФИО'),
          ),
          DataColumn2(
            size: ColumnSize.S,
            label: Text('Сумма'),
            numeric: true,
          ),
          DataColumn2(
            size: ColumnSize.S,
            label: Text('Дата'),
          ),
        ],
        rows: List<DataRow>.generate(
          peopleReversed.length,
          (index) => DataRow(
            color: index % 2 == 1
                ? MaterialStateProperty.all<Color>(Colors.grey.withOpacity(0.1))
                : MaterialStateProperty.all<Color>(Colors.yellow.withOpacity(0.4)),
            cells: [
              DataCell(Text('${peopleReversed.length - index}. ${peopleReversed[index].fullname}')),
              DataCell(Text('${peopleReversed[index].summ} ₽')),
              DataCell(Text(Jiffy(peopleReversed[index].date).format('dd.MM.yyyy HH:mm'))),
            ],
          ),
        ),
      ),
    );
  }
}
