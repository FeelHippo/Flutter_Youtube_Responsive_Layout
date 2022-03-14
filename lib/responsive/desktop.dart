import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[300],
      appBar: AppBar(
        title: const Text('D E S K T O P'),
        backgroundColor: Colors.lightGreen[500],
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                // youtube video
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        color: Colors.lightGreen[400],
                      )
                  ),
                ),
                // comment section
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.lightGreen[400],
                          height: 60,
                          child: Text('Comment ${index + 1}'),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 200,
            color: Colors.lightGreen[300],
            child:
            // recommended videos
            ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.lightGreen[400],
                    height: 120,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}