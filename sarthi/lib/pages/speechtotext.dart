import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

class MyConverter extends StatefulWidget{
  const MyConverter({super.key});

  @override
  State<MyConverter> createState() => _MyConverterState();
}

class _MyConverterState extends State<MyConverter>{

  bool startRecord = false;
  final SpeechToText speech = SpeechToText();
  bool isAvailable = false;
  var text = 'Press the mic';

  @override
  void initState() {
    // TODO: implement initState
    main();
    super.initState();
  }
  main()async{
    isAvailable =  await speech.initialize();
    setState(() {

    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sarthi' ,style: TextStyle(color: Colors.white),), backgroundColor: Colors.black,),
      body: Center(
        child: Text('$text', textAlign:  TextAlign.center, style: TextStyle( fontSize: 20, ),),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child: AvatarGlow(
          animate: startRecord,
          glowColor: Colors.pink,
          child: GestureDetector(
            onTapDown: (value){
              setState(() {
                startRecord = true;
              });
              if(isAvailable){
                speech.listen(
                  onResult: (value){
                    setState(() {
                      text = value.recognizedWords;
                    });
                  }
                );
              }
            },
            onTapUp: (value){
              setState(() {
                startRecord = false;
              });
              speech.stop();
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(startRecord?Icons.mic:Icons.mic_none_rounded, color: Colors.white,),
            
              ),
            ),
          ),
        ),
      ),
    );
  }

}