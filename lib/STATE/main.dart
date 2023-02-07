import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vacationvproject/STATE/list_provider.dart';
import 'package:vacationvproject/STATE/second.dart';

// import 'package:quiz/STATE/second.dart';

// void main() {
//   runApp(const MyApp());
// }

class ProviderHome extends StatelessWidget {
  const ProviderHome({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => NumberListProvider())
        ],
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: MyHomePage()));
  }
}

class MyHomePage extends StatefulWidget {
  // const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, numberprovider, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(numberprovider.numberslist.last.toString()),
              Expanded(
                child: ListView.builder(
                    itemCount: numberprovider.numberslist.length,
                    itemBuilder: (context, index) {
                      return Text(numberprovider.numberslist[index].toString());
                    }),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Second()));
                  },
                  child: Text("first"))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => numberprovider.add(),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
