import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String dropdownValue = 'Usage';
  String? selectedTimeUsage = 'Day';
  String? selectedTimeGoals = 'Day';
  String? selectedTimeLimit = 'Day';



  @override
  Widget build(BuildContext context) {
    String $selectedAppp='';
    String $limitTimee='';
    return MaterialApp(
      title: 'Manager',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: DropdownButtonHideUnderline(
            child: DropdownButton(
              value: dropdownValue,
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: <String>['Usage', 'Limit', 'Goals']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Row of buttons for 'Usage'
              if (dropdownValue == 'Usage')
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedTimeUsage = 'Day';
                        });
                      },
                      child: Text('Day'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          selectedTimeUsage == 'Day'
                              ? Colors.blue
                              : Colors.grey,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedTimeUsage = 'Week';
                        });
                      },
                      child: Text('Week'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          selectedTimeUsage == 'Week'
                              ? Colors.blue
                              : Colors.grey,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedTimeUsage = 'Month';
                        });
                      },
                      child: Text('Month'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          selectedTimeUsage == 'Month'
                              ? Colors.blue
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              // Show content for 'Usage' when selected
              if (dropdownValue == 'Usage' && selectedTimeUsage == 'Day')
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Total', style: TextStyle(fontSize: 40.0)),
                        ],
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('6h 36min', style: TextStyle(fontSize: 40.0)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 130.0),
                      child: Table(
                        border: TableBorder.all(color: Colors.black38),
                        children: const [
                          TableRow(children: [
                            Text('App1', style: TextStyle(fontSize: 40.0)),
                            Text('2h 30min', style: TextStyle(fontSize: 40.0)),
                          ]),
                          TableRow(children: [
                            Text('App2', style: TextStyle(fontSize: 40.0)),
                            Text('1h 48min', style: TextStyle(fontSize: 40.0)),
                          ]),
                          TableRow(children: [
                            Text('App3', style: TextStyle(fontSize: 40.0)),
                            Text('1h 30min', style: TextStyle(fontSize: 40.0)),
                          ]),
                          TableRow(children: [
                            Text('App4', style: TextStyle(fontSize: 40.0)),
                            Text('46min', style: TextStyle(fontSize: 40.0)),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),

              if (dropdownValue == 'Usage' && selectedTimeUsage == 'Week')
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Average', style: TextStyle(fontSize: 40.0)),
                        ],
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('6h 16min /daily', style: TextStyle(fontSize: 40.0)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 130.0),
                      child: Table(
                        border: TableBorder.all(color: Colors.black38),
                        children: const [
                          TableRow(children: [
                            Text('App1', style: TextStyle(fontSize: 40.0)),
                            Text('2h 24min /daily', style: TextStyle(fontSize: 40.0)),
                          ]),
                          TableRow(children: [
                            Text('App2', style: TextStyle(fontSize: 40.0)),
                            Text('1h 54min /daily', style: TextStyle(fontSize: 40.0)),
                          ]),
                          TableRow(children: [
                            Text('App3', style: TextStyle(fontSize: 40.0)),
                            Text('1h 22min /daily', style: TextStyle(fontSize: 40.0)),
                          ]),
                          TableRow(children: [
                            Text('App4', style: TextStyle(fontSize: 40.0)),
                            Text('59min /daily', style: TextStyle(fontSize: 40.0)),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              if (dropdownValue == 'Usage' && selectedTimeUsage == 'Month')
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Average', style: TextStyle(fontSize: 40.0)),
                        ],
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('5h 56min /daily', style: TextStyle(fontSize: 40.0)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 130.0),
                      child: Table(
                        border: TableBorder.all(color: Colors.black38),
                        children: const [
                          TableRow(children: [
                            Text('App1', style: TextStyle(fontSize: 40.0)),
                            Text('2h 20min /daily', style: TextStyle(fontSize: 40.0)),
                          ]),
                          TableRow(children: [
                            Text('App2', style: TextStyle(fontSize: 40.0)),
                            Text('1h 30min /daily', style: TextStyle(fontSize: 40.0)),
                          ]),
                          TableRow(children: [
                            Text('App3', style: TextStyle(fontSize: 40.0)),
                            Text('1h 15min /daily', style: TextStyle(fontSize: 40.0)),
                          ]),
                          TableRow(children: [
                            Text('App4', style: TextStyle(fontSize: 40.0)),
                            Text('37min /daily', style: TextStyle(fontSize: 40.0)),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              // Row of buttons for 'Goals'
              if (dropdownValue == 'Goals')
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedTimeGoals = 'Day';
                        });
                      },
                      child: Text('Day'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          selectedTimeGoals == 'Day'
                              ? Colors.blue
                              : Colors.grey,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedTimeGoals = 'Last 7 days';
                        });
                      },
                      child: Text('Last 7 days'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          selectedTimeGoals == 'Last 7 days'
                              ? Colors.blue
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              // Show content for 'Goals' when selected
              if (dropdownValue == 'Goals')
                Column(
                  children: [
                    // ...
                    // Total and time row
                    const Padding(
                      padding: EdgeInsets.only(top: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Total', style: TextStyle(fontSize: 40.0)),
                        ],
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('', style: TextStyle(fontSize: 40.0)),
                      ],
                    ),
                    // ...
                    // "Set Goal" button
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                    child: Builder(
                      builder: (BuildContext context) {
                        return ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                String selectedApp = 'App1'; // Default value for dropdown
                                String goalTime = ''; // Input field value

                                return AlertDialog(
                                  title: Text('Set Goal'),
                                  content: StatefulBuilder( // Wrap the content in StatefulBuilder
                                    builder: (BuildContext context, setState) {
                                      return Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          DropdownButton<String>(
                                            value: selectedApp,
                                            onChanged: (String? newValue) {
                                              setState(() { // Update selectedApp when dropdown value changes
                                                selectedApp = newValue!;
                                              });
                                            },
                                            items: <String>['App1', 'App2', 'App3']
                                                .map<DropdownMenuItem<String>>(
                                                  (String value) => DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              ),
                                            )
                                                .toList(),
                                          ),
                                          SizedBox(height: 10),
                                          TextField(
                                            onChanged: (value) {
                                              goalTime = value;
                                            },
                                            decoration: const InputDecoration(
                                              labelText: 'Goal Time',
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context); // Close the dialog
                                      },
                                      child: Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // TODO: Implement logic to save the goal and update the table
                                        // You can use selectedApp and goalTime to update the goal in your table.
                                        Navigator.pop(context); // Close the dialog
                                      },
                                      child: Text('Save'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Text('Set Goal'),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.red),
                            foregroundColor: MaterialStateProperty.all(Colors.white),
                            minimumSize: MaterialStateProperty.all(Size(140, 50)),
                          ),
                        );
                      },
                    ),
    ),


                    Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: Table(
                        border: TableBorder.all(color: Colors.black38),
                        children: const [
                          TableRow(children: [
                            Text('', style: TextStyle(fontSize: 40.0)),
                            Text('', style: TextStyle(fontSize: 40.0)),
                            Text('', style: TextStyle(fontSize: 40.0)),
                          ]),
                          TableRow(children: [
                            Text('', style: TextStyle(fontSize: 40.0)),
                            Text('', style: TextStyle(fontSize: 40.0)),
                            Text('', style: TextStyle(fontSize: 40.0)),
                          ]),
                          TableRow(children: [
                            Text('', style: TextStyle(fontSize: 40.0)),
                            Text('', style: TextStyle(fontSize: 40.0)),
                            Text('', style: TextStyle(fontSize: 40.0)),
                          ]),
                          TableRow(children: [
                            Text('', style: TextStyle(fontSize: 40.0)),
                            Text('', style: TextStyle(fontSize: 40.0)),
                            Text('', style: TextStyle(fontSize: 40.0)),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),

              // Row of buttons for 'Limit'
              if (dropdownValue == 'Limit')

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedTimeLimit = 'Day';
                        });
                      },
                      child: Text('Day'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          selectedTimeLimit == 'Day'
                              ? Colors.blue
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              // Show content for 'Limit' when selected
              if (dropdownValue == 'Limit')
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Total', style: TextStyle(fontSize: 40.0)),
                        ],
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('2h 14min', style: TextStyle(fontSize: 40.0)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Builder(
                        builder: (BuildContext context) {
                          return ElevatedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  String selectedApp = 'App1'; // Default value for dropdown
                                  String limitTime = ''; // Input field value

                                  return AlertDialog(
                                    title: Text('Set Limit'),
                                    content: StatefulBuilder(
                                      builder: (BuildContext context, setState) {
                                        return Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            DropdownButton<String>(
                                              value: selectedApp,
                                              onChanged: (String? newValue) {
                                                setState(() {
                                                  selectedApp = newValue!;
                                                });
                                              },
                                              items: <String>['App1', 'App2', 'App3']
                                                  .map<DropdownMenuItem<String>>(
                                                    (String value) => DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                ),
                                              )
                                                  .toList(),
                                            ),
                                            SizedBox(height: 10),
                                            TextField(
                                              onChanged: (value) {
                                                limitTime = value;
                                              },
                                              decoration: const InputDecoration(
                                                labelText: 'Limit Time',
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context); // Close the dialog
                                        },
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          // TODO: Implement logic to save the limit and update the table
                                          // You can use selectedApp and limitTime to update the limit in your table.
                                          // For demonstration purposes, let's print the selectedApp and limitTime.
                                          print('Selected App: $selectedApp');
                                          $selectedAppp=selectedApp;
                                          print('Limit Time: $limitTime');
                                          $limitTimee=limitTime;
                                          Navigator.pop(context); // Close the dialog
                                        },
                                        child: Text('Save'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Text('Set Limit'),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.red),
                              foregroundColor: MaterialStateProperty.all(Colors.white),
                              minimumSize: MaterialStateProperty.all(Size(140, 50)),
                            ),
                          );
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: Table(
                        border: TableBorder.all(color: Colors.black38),
                        children:  [
                          TableRow(children: [
                            Text('App1', style: TextStyle(fontSize: 40.0)),
                            Text('1h 16min', style: TextStyle(fontSize: 40.0)),
                          ]),
                          TableRow(children: [
                            Text('App3', style: TextStyle(fontSize: 40.0)),
                            Text('0h 58min', style: TextStyle(fontSize: 40.0)),
                          ]),
                          TableRow(children: [
                            Text('', style: TextStyle(fontSize: 40.0)),
                            Text('', style: TextStyle(fontSize: 40.0)),
                          ]),
                          TableRow(children: [
                            Text('', style: TextStyle(fontSize: 40.0)),
                            Text('', style: TextStyle(fontSize: 40.0)),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
