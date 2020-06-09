import 'package:flutter/material.dart';
import 'package:ioscalculater/calculate_data.dart';
import 'package:provider/provider.dart';
import 'widgets/rounded_button.dart';

class ButtonPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CalculateData>(
      builder: (context, data, child) => Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RoundedButton(
                text: data.isAC ? 'AC' : 'C',
                color: Colors.grey,
                fontColor: Colors.black,
                onPressed: () {
                  data.clearResult();
                },
              ),
              RoundedButton(
                text: '+/-',
                color: Colors.grey,
                fontColor: Colors.black,
                onPressed: () {
                  data.addPlusMinus();
                },
              ),
              RoundedButton(
                text: '%',
                color: Colors.grey,
                fontColor: Colors.black,
                onPressed: (){
                  data.calculatePercent();
                },
              ),
              RoundedButton(
                text: '÷',
                color: Colors.orange,
                onPressed: (){
                  data.calculateDivide();
                },
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RoundedButton(
                text: '7',
                color: Color(0xff333333),
                onPressed: () {
                  data.enterData('7');
                },
              ),
              RoundedButton(
                text: '8',
                color: Color(0xff333333),
                onPressed: () {
                  data.enterData('8');
                },
              ),
              RoundedButton(
                text: '9',
                color: Color(0xff333333),
                onPressed: () {
                  data.enterData('9');
                },
              ),
              RoundedButton(
                text: 'x',
                color: Colors.orange,
                onPressed: (){
                  data.calculateMultiple();
                },
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RoundedButton(
                text: '4',
                color: Color(0xff333333),
                onPressed: () {
                  data.enterData('4');
                },
              ),
              RoundedButton(
                text: '5',
                color: Color(0xff333333),
                onPressed: () {
                  data.enterData('5');
                },
              ),
              RoundedButton(
                text: '6',
                color: Color(0xff333333),
                onPressed: () {
                  data.enterData('6');
                },
              ),
              RoundedButton(
                text: '-',
                color: Colors.orange,
                onPressed: (){
                  data.calculateMinus();
                },
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RoundedButton(
                text: '1',
                color: Color(0xff333333),
                onPressed: () {
                  data.enterData('1');
                },
              ),
              RoundedButton(
                text: '2',
                color: Color(0xff333333),
                onPressed: () {
                  data.enterData('2');
                },
              ),
              RoundedButton(
                text: '3',
                color: Color(0xff333333),
                onPressed: () {
                  data.enterData('3');
                },
              ),
              RoundedButton(
                text: '+',
                color: Colors.orange,
                onPressed: (){
                  data.calculateAdd();
                },
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: FlatButton(
                  padding: EdgeInsets.symmetric(
                    vertical: 20.0,
                  ),
                  color: Color(0xff333333),
                  child: Text(
                    '0',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                  onPressed: () {
                    data.enterData('0');
                  },
                ),
              ),
              Expanded(
                child: RoundedButton(
                  text: '.',
                  color: Color(0xff333333),
                  onPressed: (){
                    data.addPoint();
                  },
                ),
              ),
              Expanded(
                child: RoundedButton(
                  text: '=',
                  color: Colors.orange,
                  onPressed: (){
                    data.calculateNumbers();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
