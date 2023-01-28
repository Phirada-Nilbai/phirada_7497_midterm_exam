import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class BasicListView extends StatelessWidget {
  const BasicListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        ListTile(
            title: Text('Object Oriented Programming',
                style: TextStyle(color: Colors.orange)),
            leading: Icon(Icons.arrow_right),
            trailing: Icon(Icons.star),
            onTap: () => ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("EN842004")))),
        ListTile(
            title: Text('Interactive Web Programming'),
            leading: Icon(Icons.arrow_right),
            onTap: () => ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("EN842300")))),
        ListTile(
            title: Text('Mobile App Development',
                style: TextStyle(color: Colors.orange)),
            leading: const Icon(Icons.arrow_right),
            trailing: Icon(Icons.star),
            onTap: () => ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("EN843305"))))
      ],
    );
  }
}

// class RandomWords extends StatefulWidget {
//   const RandomWords({Key? key}) : super(key: key);

//   @override
//   _RandomWordsState createState() => _RandomWordsState();
// }

// class _RandomWordsState extends State<RandomWords> {
//   final wordPair = WordPair.random();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.list),
//             onPressed: _pushSaved,
//             tooltip: 'Random Word of the Day',
//           )
//         ],
//       ),
//       body: _buildSuggestions(),
//     );
//   }
// }

// Widget _buildRamdomState() {
//   return MaterialApp(
//       home: Scaffold(
//     appBar: AppBar(title: const Text('Random Word of the Day')),
//     body: Center(child: Text(wordPair.asPascalCase)),
//   ));
// }
