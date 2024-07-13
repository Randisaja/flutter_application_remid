import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TeksUtama',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TeksUtama'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TeksUtama(
                teks1: 'esa prayoga isnandar',
                teks2: 'STI202102381',
              ),
              TeksUtama(
                teks1: 'amin supono',
                teks2: 'STI202102384',
              ),
              TeksUtama(
                teks1: 'rahman ramadani',
                teks2: 'STI202102385',
              ),
              TeksUtama(
                teks1: 'desta mutiara kardiansyah',
                teks2: 'STI202102389',
              ),
              TeksUtama(
                teks1: 'yusuf jauhar alif faqih',
                teks2: 'STI202102390',
              ),
              TeksUtama(
                teks1: 'randi pangestu',
                teks2: 'STI202102392',
              ),
              TeksUtama(
                teks1: 'septiasih nur inayah',
                teks2: 'STI202102393',
              ),
              TeksUtama(
                teks1: 'awan restu listyanto',
                teks2: 'STI202102395',
              ),
              TeksUtama(
                teks1: 'agus prianto',
                teks2: 'STI202102397',
              ),
              TeksUtama(
                teks1: 'febriantio',
                teks2: 'STI202102399',
              ),
              TeksUtama(
                teks1: 'sri mulyaningsih',
                teks2: 'STI202102401',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  TeksUtama({required this.teks1, required this.teks2});

  @override
  Widget build(BuildContext context) {
    bool isHighlighted = teks1 == 'randi pangestu' && teks2 == 'STI202102392';

    return Container(
      width: double.infinity,  // Ensures the container takes full width
      color: isHighlighted ? Colors.green : Colors.transparent,
      padding: EdgeInsets.all(8.0),  // Padding to ensure the text has some space
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,  // Align text to the left
        children: [
          Text(teks1, style: TextStyle(fontSize: 14)),
          Text(teks2, style: TextStyle(fontSize: 14)),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}