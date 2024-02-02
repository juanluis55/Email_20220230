import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200], 
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.grey, 
          accentColor:Colors.grey[200],
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            ButtonBar(
              children: <Widget>[
                Icon(Icons.more_horiz_rounded),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.grey[200], // Cambiado el color de fondo a gris
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Mailboxes",
                      style: TextStyle(
                        fontSize: 34.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                  ),
                  child: const Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.today),
                        title: Text('Today'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        leading: Icon(Icons.mark_email_unread),
                        title: Text('Unread'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        leading: Icon(Icons.inbox),
                        title: Text('Inbox'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        leading: Icon(Icons.archive),
                        title: Text('Archive'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        leading: Icon(Icons.report),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Junk'),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text('1'),
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.delete),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Trash'),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text('29'),
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 3.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[200],
                  ),
                  child: const ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('iCloud', style: TextStyle(fontSize: 18.0)),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
