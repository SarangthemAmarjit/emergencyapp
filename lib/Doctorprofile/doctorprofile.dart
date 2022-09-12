import 'package:flutter/material.dart';

import 'contact_box.dart';
import 'doctorinfobox.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DoctorProfilePage extends StatefulWidget {
  final String doctorname;
  final String profession;
  final String image;
  final String timing;
  final String phone;
  const DoctorProfilePage(
      {Key? key,
      required this.image,
      required this.doctorname,
      required this.profession,
      required this.timing,
      required this.phone})
      : super(key: key);

  @override
  State<DoctorProfilePage> createState() => _DoctorProfilePageState();
}

class _DoctorProfilePageState extends State<DoctorProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Doctor's Profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          // Expanded(
          //   child: SizedBox.expand(
          //     child: PageView(
          //       controller: _pageController,
          //       onPageChanged: (index) {
          //         setState(() => _currentIndex = index);
          //       },
          //     ),
          //   ),
          // ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Patient time :${widget.timing}",
                      style:
                          const TextStyle(fontSize: 13, color: Colors.green)),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.doctorname,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            widget.profession,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 35,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: Image(image: AssetImage(widget.image))),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.orangeAccent,
                      ),
                      const Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.orangeAccent,
                      ),
                      const Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.orangeAccent,
                      ),
                      const Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.orangeAccent,
                      ),
                      Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.grey.shade300,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("4.0 Out of 5.0",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    "340 Patients review",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ContactBox(
                        icon: Icons.videocam_rounded,
                        color: Colors.blue,
                      ),
                      InkWell(
                        onTap: () {
                          launchUrlString('tel:${widget.phone}');
                        },
                        child: ContactBox(
                          icon: Icons.call_end,
                          color: Colors.green,
                        ),
                      ),
                      ContactBox(
                        icon: Icons.chat_rounded,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DoctorInfoBox(
                        value: "500+",
                        info: "Successful Patients",
                        icon: Icons.groups_rounded,
                        color: Colors.green,
                      ),
                      DoctorInfoBox(
                        value: "10 Years",
                        info: "Experience",
                        icon: Icons.medical_services_rounded,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DoctorInfoBox(
                        value: "28+",
                        info: "Successful OT",
                        icon: Icons.bloodtype_rounded,
                        color: Colors.blue,
                      ),
                      DoctorInfoBox(
                        value: "8+",
                        info: "Certificates Achieved",
                        icon: Icons.card_membership_rounded,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
