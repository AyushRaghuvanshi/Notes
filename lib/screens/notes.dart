import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FloatingActionButton(onPressed: (() {}), child: Icon(Icons.add)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Welcome to Notes',style: TextStyle(fontSize: 24),),
                  ), Text(' Have a Nice Day')],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
