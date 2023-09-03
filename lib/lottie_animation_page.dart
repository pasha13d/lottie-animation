import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationPage extends StatefulWidget {
  const LottieAnimationPage({Key? key}) : super(key: key);

  @override
  State<LottieAnimationPage> createState() => _LottieAnimationPageState();
}

class _LottieAnimationPageState extends State<LottieAnimationPage> {
  List<String> title = ['Animation 1', 'Animation 2', 'Animation 3'];
  List<String> desc = ['We have something special for you keep visiting.'];
  int items = 3;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: items,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LottieBuilder.asset(
              'animations/${index+1}.json',
              height: 300,
              reverse: true,
              repeat: true,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20,),
            Text(title[index], style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,),),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(desc[index], textAlign: TextAlign.center, style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,),),
            ),
          ],
        );
      },
    );
  }
}
