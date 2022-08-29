import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qoutes_app/core/utils/app_colors.dart';
import 'package:qoutes_app/features/random_qoute/domain/entities/quote.dart';

class QouteContent extends StatelessWidget {
  final Quote qoute;
  const QouteContent({Key? key, required this.qoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Column(
          children: [
            Text(
              qoute.content,
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                qoute.author,
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
