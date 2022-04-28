import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String lable;
  final double spandingAmount;
  final double spendingPctOfTotal;

  const ChartBar(this.lable, this.spandingAmount, this.spendingPctOfTotal);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(child: Text('\$${spandingAmount.toStringAsFixed(0)}')),
        SizedBox(height: 4),
        Container(
          height: 60,
          width: 20,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2.0),
                  color: Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              FractionallySizedBox(
                heightFactor: spendingPctOfTotal,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 4),
        Text(lable)
      ],
    );
  }
}
