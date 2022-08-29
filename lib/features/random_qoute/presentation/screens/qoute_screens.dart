import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:qoutes_app/features/random_qoute/presentation/cubit/random_qoute_cubit.dart';
import 'package:qoutes_app/features/random_qoute/presentation/widget/qoute_content.dart';
import 'package:qoutes_app/injection_container.dart' as di;

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
        title: const Text("Qoute Application"),
      ),
    );
  }

  Widget _buildBodyContent() {
    return BlocBuilder<RandomQuoteCubit, RandomQuoteState>(
      builder: (context, state) {
        if (state is RandomQuoteLoaded) {
          return Column(
            children: [
              QouteContent(qoute: state.quote),
              InkWell(
                onTap: getRandomeQuote,
                child: Container(
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColor),
                  child: const Icon(
                    Icons.refresh,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          );
        } else if (state is RandomQuoteIsLoading) {
          return Center(
            child: SpinKitFadingCircle(color: Theme.of(context).primaryColor),
          );
        } else if (state is RandomQuoteError) {
          return const Center(
            child: Text("errors"),
          );
        } else {
          return Center(
            child: SpinKitFadingCircle(color: Theme.of(context).primaryColor),
          );
        }
      },
    );
  }

  getRandomeQuote() {
    BlocProvider.of<RandomQuoteCubit>(context).getRandomQuote();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getRandomeQuote();
  }
}
