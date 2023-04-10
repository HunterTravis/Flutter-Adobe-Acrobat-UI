import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adobe Acrobat Landing Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Recently Opened Files'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, String>> _recentFiles = [
    {
      'name': 'Agenda 2022',
      'date': 'Mar 28, 2022',
      'thumbnail': 'https://picsum.photos/id/237/200/300',
    },
    {
      'name': 'Marketing Proposal',
      'date': 'Feb 14, 2022',
      'thumbnail': 'https://picsum.photos/id/238/200/300',
    },
    {
      'name': 'Contract',
      'date': 'Jan 12, 2022',
      'thumbnail': 'https://picsum.photos/id/239/200/300',
    },
    {
      'name': 'Presentation Slides',
      'date': 'Dec 23, 2021',
      'thumbnail': 'https://picsum.photos/id/240/200/300',
    },
    {
      'name': 'Design Mockup',
      'date': 'Nov 19, 2021',
      'thumbnail': 'https://picsum.photos/id/241/200/300',
    },
    {
      'name': 'Research Paper',
      'date': 'Oct 29, 2021',
      'thumbnail': 'https://picsum.photos/id/242/200/300',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: _recentFiles.length,
        itemBuilder: (BuildContext context, int index) {
          final file = _recentFiles[index];
          return ListTile(
            leading: Image.network(file['thumbnail']!),
            title: Text(file['name']!),
            subtitle: Text(file['date']!),
            trailing: const Icon(Icons.more_vert),
          );
        },
      ),
    );
  }
}
