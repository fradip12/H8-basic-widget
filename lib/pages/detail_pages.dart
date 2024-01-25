import 'package:basic_2/arguments/berita_arguments.dart';
import 'package:flutter/material.dart';

class DetailBeritaUI extends StatelessWidget {
  static const routeName = '/detail-berita';
  const DetailBeritaUI({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as BeritaArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              args.image,
              width: MediaQuery.of(context).size.width,
              height: 300,
            ),
            Text(args.description),
          ],
        ),
      ),
    );
  }
}
