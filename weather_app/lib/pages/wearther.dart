import 'dart:ui';

import 'package:flutter/material.dart';

class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print("refresh");
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // main card
            SizedBox(
              width: double.infinity,

              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 16),
                          Text(
                            "300 °F",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 18),
                          Icon(Icons.cloud, size: 64),
                          const SizedBox(height: 18),
                          Text("Rain", style: TextStyle(fontSize: 26)),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Weather Forecast",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Row(
                children: [
                  Hourforecaste(),
                  Hourforecaste(),
                  Hourforecaste(),
                  Hourforecaste(),
                  Hourforecaste(),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Additional Information",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.water_drop, size: 35),
                    const SizedBox(height: 5),
                    Text("Humidity", style: TextStyle(fontSize: 16)),
                    const SizedBox(height: 5),
                    Text("94", style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.wind_power, size: 35),
                    const SizedBox(height: 5),
                    Text("Wind Speed", style: TextStyle(fontSize: 16)),
                    const SizedBox(height: 5),
                    Text("7.67", style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.umbrella_sharp, size: 35),
                    const SizedBox(height: 5),
                    Text("Pressure", style: TextStyle(fontSize: 16)),
                    const SizedBox(height: 5),
                    Text("1006", style: TextStyle(fontSize: 20)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Hourforecaste extends StatelessWidget {
  const Hourforecaste({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Text(
                '03:00',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Icon(Icons.cloud, size: 34),
              const SizedBox(height: 10),
              Text('320.12', style: TextStyle(fontSize: 14)),
            ],
          ),
        ),
      ),
    );
  }
}
