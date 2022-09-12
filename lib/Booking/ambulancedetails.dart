import 'package:flutter/material.dart';
import 'package:otp/Booking/constant.dart';
import 'package:otp/Model/ambulancemodel.dart';

import 'package:url_launcher/url_launcher_string.dart';

class AmbulanceDetailpage extends StatelessWidget {
  final AmbulanceDetail ambulancedetail;
  const AmbulanceDetailpage({Key? key, required this.ambulancedetail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 231, 183),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ambulancedetail.ambulanceName,
                  style: textStylefinal,
                ),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.close,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: SizedBox(
                height: 250,
                child: Image.asset(
                  ambulancedetail.ambulanceImage,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              ambulancedetail.ambulanceName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'ICU Ambulance',
              style: TextStyle(fontSize: 20, color: Colors.grey[400]),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'Contact Info :',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, bottom: 5, top: 5),
            child: ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Phone Number :'),
                  Text(ambulancedetail.ambulanceNumber),
                  InkWell(
                    onTap: () => launchUrlString(
                        // ignore: prefer_interpolation_to_compose_strings
                        'tel: ' + ambulancedetail.ambulanceNumber),
                    child: const Icon(
                      Icons.call_sharp,
                      color: Color.fromARGB(255, 63, 153, 68),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, bottom: 5, top: 5),
            child: ListTile(
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Address :'),
                    Text(ambulancedetail.ambulanceAddress)
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
