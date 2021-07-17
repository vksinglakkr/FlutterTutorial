import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class SfDataGridDemo extends StatefulWidget {
  @override
  _SfDataGridDemoState createState() => _SfDataGridDemoState();
}

class _SfDataGridDemoState extends State<SfDataGridDemo> {
  EmployeeDataSource employeeDataSource;
  CustomColumnSizer _customColumnSizer;

  @override
  void initState() {
    super.initState();
    employeeDataSource = EmployeeDataSource(employees: populateData());
    _customColumnSizer = CustomColumnSizer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncfusion Flutter DataGrid'),
      ),
      body: SfDataGrid(
        source: employeeDataSource,
        columnSizer: _customColumnSizer,
        onQueryRowHeight: (RowHeightDetails details) {
          return details.getIntrinsicRowHeight(details.rowIndex);
        },
        columns: <GridColumn>[
          GridColumn(
            columnName: 'ID',
            autoFitPadding: EdgeInsets.all(10.0),
            label: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.centerRight,
              child: Text(
                'ID',
                softWrap: true,
              ),
            ),
          ),
          GridColumn(
            columnName: 'Contact Name',
            autoFitPadding: EdgeInsets.all(10.0),
            label: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Contact Name',
                softWrap: true,
              ),
            ),
          ),
          GridColumn(
            columnName: 'Date of Birth',
            visible: true,
            autoFitPadding: EdgeInsets.all(10.0),
            width: 100.0,
            label: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Date of Birth',
                softWrap: true,
              ),
            ),
          ),
          GridColumn(
            columnName: 'Salary',
            autoFitPadding: EdgeInsets.all(10.0),
            label: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Salary',
                softWrap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Employee {
  Employee(this.id, this.contactName, this.dob, this.salary);
  final int id;
  final String contactName;
  final DateTime dob;
  final int salary;
}

List<Employee> populateData() {
  return [
    Employee(1671, 'Maria Anders', DateTime(1978, 04, 12), 25000),
    Employee(1672, 'Ana Trujillo', DateTime(1997, 07, 02), 30000),
    Employee(1673, 'Antonio Moreno', DateTime(1995, 11, 28), 23000),
    Employee(1674, 'Thomas Hardy', DateTime(1979, 12, 25), 18000),
    Employee(1675, 'Christina Berglund', DateTime(1985, 5, 05), 34000),
    Employee(1676, 'Hanna Moos', DateTime(1990, 08, 14), 40000),
    Employee(1677, 'Frédérique Citeaux', DateTime(1995, 11, 28), 34000),
    Employee(1678, 'Martín Sommer', DateTime(1995, 11, 28), 21000),
    Employee(1679, 'Laurence Lebihan', DateTime(1995, 11, 28), 54000),
    Employee(1610, 'Elizabeth Lincoln', DateTime(1995, 11, 28), 23000),
    Employee(1611, 'Victoria Ashworth', DateTime(1995, 11, 28), 23000),
    Employee(1612, 'Patricio Simpson', DateTime(1995, 11, 28), 23000),
    Employee(1613, 'Francisco Chang', DateTime(1995, 11, 28), 23000),
    Employee(1614, 'Yang Wang', DateTime(1995, 11, 28), 23000),
    Employee(1615, 'Pedro Afonso', DateTime(1995, 11, 28), 23000),
    Employee(1616, 'Elizabeth Brown', DateTime(1995, 11, 28), 23000),
    Employee(1617, 'Sven Ottlieb', DateTime(1995, 11, 28), 23000),
    Employee(1618, 'Janine Labrune', DateTime(1995, 11, 28), 23000),
    Employee(1619, 'Ann Devon', DateTime(1995, 11, 28), 23000),
    Employee(1620, 'Roland Mendel', DateTime(1995, 11, 28), 23000)
  ];
}

class EmployeeDataSource extends DataGridSource {
  EmployeeDataSource({List<Employee> employees}) {
    dataGridRows = employees.map<DataGridRow>((dataGridRow) {
      return DataGridRow(cells: [
        DataGridCell<int>(columnName: 'ID', value: dataGridRow.id),
        DataGridCell<String>(
            columnName: 'Contact Name', value: dataGridRow.contactName),
        DataGridCell<DateTime>(
            columnName: 'Date of Birth', value: dataGridRow.dob),
        DataGridCell<int>(columnName: 'Salary', value: dataGridRow.salary),
      ]);
    }).toList();
  }

  List<DataGridRow> dataGridRows = [];

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataCell) {
      String cellValue;
      if (dataCell.columnName == 'Date of Birth') {
        cellValue = DateFormat.yMMMMd('en_US').format(dataCell.value);
      } else if (dataCell.columnName == 'Salary') {
        cellValue = NumberFormat.simpleCurrency(decimalDigits: 0)
            .format(dataCell.value);
      } else {
        cellValue = dataCell.value.toString();
      }

      return Container(
        padding: EdgeInsets.all(10.0),
        alignment: dataCell.columnName == 'ID'
            ? Alignment.centerRight
            : Alignment.centerLeft,
        child: Text(cellValue),
      );
    }).toList());
  }
}

class CustomColumnSizer extends ColumnSizer {
  @override
  double computeCellHeight(GridColumn column, DataGridRow row, Object cellValue,
      TextStyle textStyle) {
    if (column.columnName == 'Date of Birth') {
      cellValue = DateFormat.yMMMMd('en_US').format(cellValue as DateTime);
    } else if (column.columnName == 'Salary') {
      cellValue =
          NumberFormat.simpleCurrency(decimalDigits: 0).format(cellValue);
    }

    return super.computeCellHeight(column, row, cellValue, textStyle);
  }
}
