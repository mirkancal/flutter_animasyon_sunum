import 'package:animation_presentation/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  @override
  _AnimatedOpacityExampleState createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  double opacityLevel = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 300,
      child: Column(
        children: <Widget>[
          FlutterLogo(
            size: 200,
          ),
          MaterialButton(
            child: Text(
              "Detayları Göster",
              style: Theme.of(context)
                  .textTheme
                  .button
                  .copyWith(color: accentColor),
            ),
            onPressed: () {
              setState(() {
                opacityLevel = 1.0;
              });
            },
          ),
          AnimatedOpacity(
            duration: Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            opacity: opacityLevel,
            child: Text(
              "Flutter, Google tarafından oluşturulan açık kaynaklı bir UI yazılım geliştirme kitidir. Android, iOS, Windows, Mac, Linux, Google Fuşya ve web uygulamaları geliştirmek için kullanılır.",
              style: Theme.of(context).textTheme.body1.copyWith(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
