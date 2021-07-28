import 'package:Assignment_Flutter/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ListPlaceholder extends StatefulWidget {
  ListPlaceholder({Key key}) : super(key: key);

  @override
  _ListPlaceholderState createState() =>
      _ListPlaceholderState();
}

class _ListPlaceholderState extends State {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Shimmer.fromColors(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [0, 1, 2, 3, 4, 5]
                  .map((_) => Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 30.0,
                                    color: Colors.black54,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2.0),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 30.0,
                                    color: Colors.black54,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2.0),
                                  ),
                                  Container(
                                    width: 50.0,
                                    height: 30.0,
                                    color: Colors.black54,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
          baseColor: kColorPrimaryDark,
          highlightColor: Colors.white24,
          direction: ShimmerDirection.ltr,
          period: Duration(seconds: 2),
        ),
      ),
    );
  }
}
