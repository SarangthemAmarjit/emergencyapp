import 'package:flutter/material.dart';
import 'package:otp/Booking/ambulancedetails.dart';
import 'package:otp/Booking/constant.dart';
import 'package:otp/Model/ambulancemodel.dart';
import 'package:otp/services/serviceapi.dart';

class AmbulancePage extends StatefulWidget {
  const AmbulancePage({Key? key}) : super(key: key);

  @override
  State<AmbulancePage> createState() => _AmbulancePageState();
}

class _AmbulancePageState extends State<AmbulancePage> {
  List<AmbulanceModel> ambulancelist = [];

  @override
  void initState() {
    super.initState();
    getdata();
  }

  getdata() async {
    var _user1 = await ServiceApi().getambulance();

    setState(() {
      ambulancelist = _user1!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 241, 241),
      body: Column(children: [
        const SizedBox(
          height: 20,
        ),
        Expanded(
          flex: 8,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 1.15,
              child: Text(
                'AVAILABLE AMBULANCE',
                textScaleFactor: 1.4,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(.7),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 80,
          child: SizedBox(
            child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 10 / 12,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0),
                itemCount: ambulancelist.length,
                itemBuilder: (c, i) {
                  return InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AmbulanceDetailpage(
                                  ambulancedetail:
                                      ambulancelist[i].ambulanceDetail)));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.2,
                      height: MediaQuery.of(context).size.height / 1.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.05),
                              blurRadius: 50),
                        ],
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(20)),
                            child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                height: MediaQuery.of(context).size.width / 2.6,
                                decoration: const BoxDecoration(
                                  color: Color(0xff5C71F3),
                                ),
                                alignment: Alignment.center,
                                child: Image.asset(
                                  ambulancelist[i].ambulanceImage,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.width / 6.5,
                            width: MediaQuery.of(context).size.width / 2.36,
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ambulancelist[i].ambulanceName,
                                  textScaleFactor: 1.4,
                                  maxLines: 1,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(.8),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  ambulancelist[i].ambulanceType,
                                  textScaleFactor: 1,
                                  maxLines: 1,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black.withOpacity(.7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ]),
    );
  }
}
