import 'package:bmi_calculator/constanrs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bmi_calculator/Components/bottom_button.dart';
import 'package:bmi_calculator/Components/reusable_cardst.dart';

class Resultpage extends StatelessWidget {
  Resultpage(
      {required this.bmi_res, required this.interpret, required this.text});
  final String bmi_res;
  final String text;
  final String interpret;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Text('YOUR RESULT',
                    textAlign: TextAlign.center, style: kTitletestStyle),
              ),
            ),
            Expanded(
                flex: 5,
                child: ReusableCardst(
                  colour: cardcolour,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        text.toUpperCase(),
                        style: resulttextStyle,
                      ),
                      Text(
                        bmi_res,
                        style: ValueStyle,
                      ),
                      Text(
                        interpret,
                        textAlign: TextAlign.center,
                        style: bodyStyle,
                      ),
                    ],
                  ),
                )),
            BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonTitle: 'RE-CALCULATE')
          ],
        ));
  }
}
