import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qoutes_app/features/random_qoute/presentation/widget/qoute_content.dart';

class QouteScreen extends StatefulWidget {
  const QouteScreen({Key? key}) : super(key: key);

  @override
  State<QouteScreen> createState() => _QouteScreenState();
}

class _QouteScreenState extends State<QouteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBodyContent(),
      appBar: AppBar(
        title: Text("Qoute Application"),
      ),
    );
  }

  Widget _buildBodyContent() {
    return Column(
      children: [
        const QouteContent(),
        Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Theme.of(context).primaryColor),
          child: const Icon(
            Icons.refresh,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
