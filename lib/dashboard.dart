import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:text_scroll/text_scroll.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:EasyFi/main.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

enum LegendShape { circle, rectangle }

class _DashboardState extends State<Dashboard> {
  Map<String, double> dataMap = <String, double>{
    "Needs": 10,
    "Wants": 4,
    "Savings": 3,
    "Spending": 3
  };

  List<Color> colorList = <Color>[
    Colors.yellow,
    Colors.blue,
    Colors.indigo,
    Colors.purple
  ];

  List<List<Color>> gradientList = <List<Color>>[
    [
      const Color.fromRGBO(223, 250, 92, 1),
      const Color.fromRGBO(129, 250, 112, 1),
    ],
    [
      const Color.fromRGBO(129, 182, 205, 1),
      const Color.fromRGBO(91, 253, 199, 1),
    ],
    [
      const Color.fromRGBO(175, 63, 62, 1.0),
      const Color.fromRGBO(254, 154, 92, 1),
    ]
  ];
  int key = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(
                height: 40,
              ),
              ListTile(
                shape: const Border.symmetric(
                  horizontal: BorderSide(width: 1),
                ),
                leading: const FaIcon(FontAwesomeIcons.edit),
                title: const Text(
                  'Edit dashboard',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                shape: const Border.symmetric(
                  horizontal: BorderSide(width: 1),
                ),
                leading: const Icon(Icons.newspaper),
                title: const Text(
                  'News',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                shape: const Border.symmetric(
                  horizontal: BorderSide(width: 1),
                ),
                leading: const FaIcon(FontAwesomeIcons.bookOpen),
                title: const Text(
                  'EBooks',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                shape: const Border.symmetric(
                  horizontal: BorderSide(width: 1),
                ),
                leading: const FaIcon(FontAwesomeIcons.youtube),
                title: const Text(
                  'Youtube',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                shape: const Border.symmetric(
                  horizontal: BorderSide(width: 1),
                ),
                leading: const FaIcon(FontAwesomeIcons.arrowTrendUp),
                title: const Text(
                  'Stocks',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                shape: const Border.symmetric(
                  horizontal: BorderSide(width: 1),
                ),
                leading: const Icon(Icons.notifications),
                title: const Text(
                  'Alerts',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                shape: const Border.symmetric(
                  horizontal: BorderSide(width: 1),
                ),
                leading: const Icon(Icons.logout),
                title: const Text(
                  'Log Out',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ));
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text.rich(
            TextSpan(
              style: Theme.of(context)
                  .primaryTextTheme
                  .labelSmall
                  ?.copyWith(color: Colors.white),
              children: const [
                TextSpan(text: 'Dashboard'),
              ],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.support_agent,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.settings,
                size: 30,
              ),
            )
          ],
        ),
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 1.05,
            child: ListView(
              children: [
                Column(
                  children: [
                    const ListTile(
                      title: Text(
                        'Thursday, December 4th, 2022',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 1.05,
                        child: Row(
                          children: const [
                            Flexible(
                              child: TextScroll(
                                'Bitcoin \$16,863.70 -147.80 (0.87%) ↓ today       Dow Jones Industrial Average 33,747.86 +32.49 (0.096%) ↑ today         S&P 500: 3,992.93 +36.56 (0.92%) ↑ today',
                                intervalSpaces: 10,
                                velocity: Velocity(
                                  pixelsPerSecond: Offset(50, 0),
                                ),
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            const ListTile(
                              title: Text(
                                'Budget',
                                style: TextStyle(
                                  fontSize: 23,
                                ),
                              ),
                              trailing: Icon(Icons.edit),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            PieChart(
                              dataMap: dataMap,
                              chartType: ChartType.ring,
                              baseChartColor:
                                  Colors.grey[50]!.withOpacity(0.15),
                              colorList: colorList,
                              chartValuesOptions: const ChartValuesOptions(
                                showChartValuesInPercentage: true,
                              ),
                              totalValue: 20,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            const ListTile(
                              title: Text(
                                'Savings goals',
                                style: TextStyle(fontSize: 25),
                              ),
                            ),
                            const ListTile(
                              leading: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.home),
                              ),
                              title: Text('Mortgage Downpayment'),
                              subtitle: Text('Goal: \$20,000'),
                              trailing: Text('Saved: \$4,750'),
                              // tileColor: Colors.green,
                            ),
                            LinearPercentIndicator(
                              alignment: MainAxisAlignment.center,
                              width: MediaQuery.of(context).size.width / 1.2,
                              lineHeight: 14.0,
                              percent: 0.25,
                              center: const Text(
                                "25.5%",
                                style: TextStyle(fontSize: 12.0),
                              ),
                              trailing: const Icon(Icons.mood),
                              backgroundColor: Colors.grey,
                              progressColor: Colors.green,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const ListTile(
                              leading: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.airplane_ticket),
                              ),
                              title: Text('Vacation'),
                              subtitle: Text('Goal: \$2,000'),
                              trailing: Text('Saved: \$175'),
                            ),
                            LinearPercentIndicator(
                              alignment: MainAxisAlignment.center,
                              width: MediaQuery.of(context).size.width / 1.2,
                              lineHeight: 14.0,
                              percent: 0.03,
                              center: const Text(
                                "3.16%",
                                style: TextStyle(fontSize: 12.0),
                              ),
                              trailing: const Icon(Icons.mood_bad),
                              backgroundColor: Colors.grey,
                              progressColor: Colors.red,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const ListTile(
                              leading: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.emergency),
                              ),
                              title: Text('Emergency Fund'),
                              subtitle:
                                  Text('Goal: \$6,000 (3 Months of expenses)'),
                              trailing: Text('Saved: \$4,750'),
                            ),
                            LinearPercentIndicator(
                              alignment: MainAxisAlignment.center,
                              width: MediaQuery.of(context).size.width / 1.2,
                              lineHeight: 14.0,
                              percent: 0.78,
                              center: const Text(
                                "78.5%",
                                style: TextStyle(fontSize: 12.0),
                              ),
                              trailing: const Icon(Icons.mood),
                              backgroundColor: Colors.grey,
                              progressColor: Colors.green,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        //Stocks, Bonds, 401k
                        const ListTile(
                          leading: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.attach_money),
                          ),
                          title: Text('401k'),
                          trailing: Text(
                            'Saved: \$8,470',
                          ),
                          subtitle: Text(
                            '↑ 3%',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        //Credit Scores
                        Column(
                          children: [
                            const ListTile(
                              title: Text(
                                'Credit Scores',
                                style: TextStyle(fontSize: 23),
                              ),
                              trailing: Icon(Icons.credit_score),
                            ),
                            Column(
                              children: const [
                                ListTile(
                                  leading: Icon(Icons.info),
                                  title: Text(
                                    'Equifax',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  subtitle: Text(
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.green,
                                    ),
                                    '↑ 2 Points',
                                  ),
                                  trailing: Text(
                                    '692',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                ListTile(
                                  leading: Icon(Icons.info),
                                  title: Text(
                                    'TransUnion',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  subtitle: Text(
                                    '↓ 1 Point',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.red,
                                    ),
                                  ),
                                  trailing: Text(
                                    '670',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                ListTile(
                                  leading: Icon(Icons.info),
                                  title: Text(
                                    'Experian',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  subtitle: Text(
                                    '↑ 5 Points',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.green,
                                    ),
                                  ),
                                  trailing: Text(
                                    '701',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    //TODO: Financial health score
                    //TODO: Today's headlines <-- should make that scrolling across the screen
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
