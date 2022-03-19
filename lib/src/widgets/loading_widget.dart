import 'package:flutter/material.dart';

class LoadingDisplay extends StatelessWidget {
  const LoadingDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color(0Xff0C1727),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _createDumbbellImage(),
            SizedBox(width: 20),
            _createLoadingText(),
          ],
        ),
      ),
    );
  }

  Widget _createDumbbellImage() {
    return Image.asset('dumbbell.png');
  }

  Widget _createLoadingText() {
    return Text(
      'Loading...',
      style: TextStyle(
        // TODO: change this to TextPrimary when theme is defined
        color: Colors.white,
        fontSize: 24,
      ),
    );
  }
}
