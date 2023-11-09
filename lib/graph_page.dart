import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class GraphPage extends StatefulWidget {
  @override
  _GraphPageState createState() => _GraphPageState();
}

class _GraphPageState extends State<GraphPage> {
  List<FlSpot> dataPoints1 = [];
  bool showGraph = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grafik (Unfinish)'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            if (showGraph) // Only show the graph when showGraph is true
              AspectRatio(
                aspectRatio: 1.7,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(show: false),
                    borderData: FlBorderData(show: true),
                    minX: 0,
                    maxX: 10,
                    minY: 0,
                    maxY: 10,
                    lineBarsData: [
                      LineChartBarData(
                        spots: dataPoints1,
                        isCurved: true,
                        colors: [Colors.purple],
                        belowBarData: BarAreaData(show: false),
                      ),
                    ],
                  ),
                ),
              ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Enter data Set',
                      labelStyle: TextStyle(
                          color: Colors
                              .purple), // Mengubah warna teks label menjadi ungu
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      hintStyle: TextStyle(
                          color: Colors
                              .purple), // Mengubah warna teks di dalam TextField menjadi ungu
                    ),
                    onSubmitted: (value) {
                      setState(() {
                        double number = double.tryParse(value) ?? 0.0;
                        dataPoints1
                            .add(FlSpot(dataPoints1.length.toDouble(), number));
                        showGraph =
                            true; // Show the graph when data points are added
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
