import 'package:flutter/material.dart';

class CurrencyConvert extends StatelessWidget {
  const CurrencyConvert({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(width: 2),
      borderRadius: BorderRadius.circular(60),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("currency"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "0",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                style: TextStyle(color: Colors.black87),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: border,
                  hintText: "please enter amount in USD",
                  hintStyle: TextStyle(color: Colors.black12),
                  prefixIcon: Icon(Icons.monetization_on_rounded),
                  prefixIconColor: Colors.black54,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
