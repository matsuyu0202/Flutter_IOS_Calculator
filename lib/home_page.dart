import 'package:flutter/material.dart';
import 'package:ioscalculater/calculate_data.dart';
import 'button_pad.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  Provider.of<CalculateData>(context).result,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 90.0,
                    fontWeight: FontWeight.w200
                  ),
                  maxLines: 1,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ButtonPad(),
            ],
          ),
        ),
      ),
    );
  }
}
