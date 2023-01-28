import 'package:flutter/material.dart';
import 'courses_display.dart';

class ImageAsset extends StatelessWidget {
  const ImageAsset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage("images/image.png");
    Image image = Image(
      image: assetImage,
      width: 500,
      height: 400,
    );
    return Container(
      child: image,
      padding: EdgeInsets.only(top: 10),
    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              padding: const EdgeInsets.all(12),
              textStyle: const TextStyle(fontFamily: 'BakbakOne', fontSize: 30),
            ),
            child: const Text("Next", style: TextStyle(color: Colors.white)),
            onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return BasicListView();
                }))));
  }
}

class WidgetsDemo extends StatelessWidget {
  const WidgetsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(children: [
            Container(
              margin: EdgeInsets.all(80),
              decoration: BoxDecoration(color: Colors.orange),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Midterm Exam 2/2022",
                      style: TextStyle(color: Colors.black, fontSize: 18))
                ],
              ),
            ),
            const ImageAsset(),
            Text('By Phirada Nilbai',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            Text('633040749-7',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            const NextButton()
          ])),
    );
  }
}
