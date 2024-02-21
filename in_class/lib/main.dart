import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Layout Demo'),
          ),
          body: Center(child:_buildGrid()),
        ));
  }

  Widget _buildDecoratedImage(int imageIndex) => Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 10, color: Colors.black38),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          margin: const EdgeInsets.all(4),
          child: Image.asset('image/pic$imageIndex.jpg'),
        ),
      );

  Widget _buildImageColumn(){
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black26,
      ),
      child: Column(
        children: [
          _buildImageRow(1),
          _buildImageRow(3)
        ],
      )
    );
  }

  Widget _buildImageRow(int imageIndex) => Row(
    children:[
      _buildDecoratedImage(imageIndex),
      _buildDecoratedImage(imageIndex+1),
    ]
  );
  
Widget _buildGrid() => GridView.extent(
  maxCrossAxisExtent: 150,
  padding: const EdgeInsets.all(4),
  mainAxisSpacing: 4,
  crossAxisSpacing: 4,
  children: _buildGridTileList(30),
);

List<Container> _buildGridTileList(int count) => List.generate(
  count, (i) => Container(child: Image.asset('image/pic$i.jpg'))
);

}
