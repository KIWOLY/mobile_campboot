import 'package:flutter/material.dart';

class CurrencyConvert extends StatefulWidget {
  const CurrencyConvert({super.key});

  @override
  State<CurrencyConvert> createState() => _CurrencyConvertState();
}

class _CurrencyConvertState extends State<CurrencyConvert> {
  double result = 0;
  TextEditingController textEditingController = TextEditingController();
  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 2500;
    });
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(width: 2),
      borderRadius: BorderRadius.circular(60),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text("Currency Converter"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Tsh $result",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: textEditingController,
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
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextButton(
                onPressed: () {
                  convert();
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  fixedSize: Size(380, 50),
                ),

                child: Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
