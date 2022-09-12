import 'package:flutter/material.dart';
import 'package:otp/videos/constant.dart';

import 'package:video_player/video_player.dart';

class VideoHome extends StatefulWidget {
  const VideoHome({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _VideoHomeState createState() => _VideoHomeState();
}

class _VideoHomeState extends State<VideoHome> {
  late VideoPlayerController controller1;
  late VideoPlayerController controller2;
  late VideoPlayerController controller3;
  late VideoPlayerController controller4;
  late VideoPlayerController controller5;
  late VideoPlayerController controller6;
  late VideoPlayerController controller7;
  late VideoPlayerController controller8;
  late VideoPlayerController controller9;
  late VideoPlayerController controller10;
  late VideoPlayerController controller11;
  late VideoPlayerController controller12;
  late VideoPlayerController controller13;
  late VideoPlayerController controller14;
  late VideoPlayerController controller15;
  late VideoPlayerController controller16;
  late VideoPlayerController controller17;
  late VideoPlayerController controller18;
  late VideoPlayerController controller19;
  late VideoPlayerController controller20;
  late VideoPlayerController controller21;
  late VideoPlayerController controller22;
  late VideoPlayerController controller23;
  late VideoPlayerController controller24;
  late VideoPlayerController controller25;
  late VideoPlayerController controller26;

  @override
  void initState() {
    loadVideoPlayer1();
    loadVideoPlayer2();
    loadVideoPlayer3();
    loadVideoPlayer4();
    loadVideoPlayer5();
    loadVideoPlayer6();
    loadVideoPlayer7();
    loadVideoPlayer8();
    loadVideoPlayer9();
    loadVideoPlayer10();
    loadVideoPlayer11();
    loadVideoPlayer12();
    loadVideoPlayer13();
    loadVideoPlayer14();
    loadVideoPlayer15();
    loadVideoPlayer16();
    loadVideoPlayer17();
    loadVideoPlayer18();
    loadVideoPlayer19();
    loadVideoPlayer20();
    loadVideoPlayer21();
    loadVideoPlayer22();
    loadVideoPlayer23();
    loadVideoPlayer24();
    loadVideoPlayer25();
    loadVideoPlayer26();

    super.initState();
  }

  loadVideoPlayer1() {
    controller1 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_11C_Sudden%20Illness%20-%20Asthma.mp4');

    controller1.addListener(() {
      setState(() {});
    });
    controller1.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer2() {
    controller2 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_01_Acting%20in%20an%20Emergency.mp4');
    controller2.addListener(() {
      setState(() {});
    });
    controller2.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer3() {
    controller3 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_11D_Sudden%20Illness%20-%20Diabetic%20Emergency.mp4');
    controller3.addListener(() {
      setState(() {});
    });
    controller3.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer4() {
    controller4 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_02_Preventing%20Disease%20Transmission.mp4');
    controller4.addListener(() {
      setState(() {});
    });
    controller4.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer5() {
    controller5 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_12A_Poisoning.mp4');
    controller5.addListener(() {
      setState(() {});
    });
    controller5.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer6() {
    controller6 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_03_Check%20the%20Victim.mp4');
    controller6.addListener(() {
      setState(() {});
    });
    controller6.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer7() {
    controller7 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_12B_Allergic%20Reactions%20and%20Anaphylactic%20Shock.mp4');
    controller7.addListener(() {
      setState(() {});
    });
    controller7.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer8() {
    controller8 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_04_Recovery%20Position.mp4');
    controller8.addListener(() {
      setState(() {});
    });
    controller8.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer9() {
    controller9 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_12C_Using%20an%20Auto-Injector.mp4');
    controller9.addListener(() {
      setState(() {});
    });
    controller9.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer10() {
    controller10 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_05_Bleeding%20and%20Wound%20Care.mp4');
    controller10.addListener(() {
      setState(() {});
    });
    controller10.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer11() {
    controller11 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_13_Cold%20and%20Heat%20Emergencies.mp4');
    controller11.addListener(() {
      setState(() {});
    });
    controller11.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer12() {
    controller12 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_06_Shock.mp4');
    controller12.addListener(() {
      setState(() {});
    });
    controller12.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer13() {
    controller13 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_14_Rescuing%20and%20Moving%20Victims.mp4');
    controller13.addListener(() {
      setState(() {});
    });
    controller13.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer14() {
    controller14 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_07_Burns.mp4');
    controller14.addListener(() {
      setState(() {});
    });
    controller14.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer15() {
    controller15 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_15A_Adult%20CPR%201-1%20Student%20-%20Manikin%20Ratio.mp4');
    controller15.addListener(() {
      setState(() {});
    });
    controller15.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer16() {
    controller16 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_08_Bone%20Joint%20and%20Muscle%20Injury.mp4');
    controller16.addListener(() {
      setState(() {});
    });
    controller16.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer17() {
    controller17 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_15B_Adult%20CPR%202-1%20Student%20-%20Manikin%20Ratio.mp4');
    controller17.addListener(() {
      setState(() {});
    });
    controller17.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer18() {
    controller18 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_10A_Spinal%20Injury.mp4');
    controller18.addListener(() {
      setState(() {});
    });
    controller18.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer19() {
    controller19 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_15C_Adult%20AED.mp4');
    controller19.addListener(() {
      setState(() {});
    });
    controller19.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer20() {
    controller20 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_10B_Concussion%20and%20Head%20Injury.mp4');
    controller20.addListener(() {
      setState(() {});
    });
    controller20.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer21() {
    controller21 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_16A_Pediatric%20CPR%201-1%20Student%20-%20Manikin%20Ratio.mp4');
    controller21.addListener(() {
      setState(() {});
    });
    controller21.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer22() {
    controller22 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_11A_Sudden%20Illness%20-%20Heart%20Attack%20and%20Chest%20Pain.mp4');
    controller22.addListener(() {
      setState(() {});
    });
    controller22.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer23() {
    controller23 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_16B_Pediatric%20AED.mp4');
    controller23.addListener(() {
      setState(() {});
    });
    controller23.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer24() {
    controller24 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_11B_Sudden%20Illness%20-%20Stroke.mp4');
    controller24.addListener(() {
      setState(() {});
    });
    controller24.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer25() {
    controller25 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/FIRST_AID_CPR_AED_17_Choking.mp4');
    controller25.addListener(() {
      setState(() {});
    });
    controller25.initialize().then((value) {
      setState(() {});
    });
  }

  loadVideoPlayer26() {
    controller26 = VideoPlayerController.network(
        'https://nscmediacdn.azureedge.net/videos/nscu/First%20Aid%20-%20Advanced%20First%20Aid,%20CPR%20&%20AED%20Videos/4-Cardiac%20Emergencies/CPR%20for%20Professional%20Rescuers/6%20Breathing%20with%20a%20Bag%20Mask/1%20Breathing%20with%20a%20Bag%20Mask.mp4');
    controller26.addListener(() {
      setState(() {});
    });
    controller26.initialize().then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller1),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Videopage(controller: controller2)),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller3)),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller4)),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller5)),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller6)),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller7)),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller8)),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller9)),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller10)),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller11)),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller12)),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller13)),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller14)),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller15)),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller16)),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller17)),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller18)),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller19)),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller20)),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller21)),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller22)),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller23)),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller24)),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller25)),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Videopage(controller: controller26)),
          ]),
        ],
      ),
    ));
  }
}
