// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:otp/Model/DoctorCardmodel.dart';
import 'package:otp/doctorpage.dart';
import 'package:otp/services/serviceapi.dart';
import 'package:otp/util/category_card.dart';

import 'Doctorprofile/doctorprofile.dart';

final controller_1 = TextEditingController();
final controller_2 = TextEditingController();
final controller_3 = TextEditingController();
final controller_4 = TextEditingController();

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<DoctorcardModel> doctorcardlist = [];

  @override
  void initState() {
    super.initState();
    getdata();
  }

  getdata() async {
    var _user1 = await ServiceApi().getdoctorcard();
    var _user2 = await ServiceApi().getdoctors();

    setState(() {
      doctorcardlist = _user1!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hello',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'There..!!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.person),
                  )
                ],
              ),
            ),
            const SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  children: [
                    SizedBox(
                        height: 100,
                        width: 100,
                        child: Lottie.asset('assets/images/lottie1.json')),
                    const SizedBox(
                      width: 40,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'How do you feel?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 3),
                        const Text(
                          'FEEL FREE TO ASK ANYTHING???',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple[300],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text('PLEASE CONSIDER THE BELOW'),
                          ),
                        )
                      ],
                    ))
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),

            const Text(
              'Availables',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            // horizontal Listview ->categories:dentist,surgean etc...

            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryCard(
                    categoryName: 'cardio',
                    iconImagesPath: 'assets/icons/cardio.jpg',
                    btnpress: DoctorPage(),
                  ),
                  CategoryCard(
                    categoryName: 'surgean',
                    iconImagesPath: 'assets/icons/surgean.jpg',
                    btnpress: DoctorPage(),
                  ),
                  CategoryCard(
                    categoryName: 'dentist',
                    iconImagesPath: 'assets/icons/tooth.jpg',
                    btnpress: DoctorPage(),
                  ),
                  CategoryCard(
                    categoryName: 'child',
                    iconImagesPath: 'assets/icons/child.jpg',
                    btnpress: DoctorPage(),
                  ),
                  CategoryCard(
                    categoryName: 'ortho',
                    iconImagesPath: 'assets/icons/ortho.jpg',
                    btnpress: DoctorPage(),
                  ),
                  CategoryCard(
                    categoryName: 'oncology',
                    iconImagesPath: 'assets/icons/oncology.jpg',
                    btnpress: DoctorPage(),
                  ),
                  CategoryCard(
                    categoryName: 'Neurology',
                    iconImagesPath: 'assets/icons/Neurology.png',
                    btnpress: DoctorPage(),
                  ),
                  CategoryCard(
                    categoryName: 'Dermatology',
                    iconImagesPath: 'assets/icons/dermatology.png',
                    btnpress: DoctorPage(),
                  ),
                  CategoryCard(
                    categoryName: 'Gynaecology',
                    iconImagesPath: 'assets/icons/gynaecology.png',
                    btnpress: DoctorPage(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 3),
            //doctor list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Popular Doctors',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: doctorcardlist.length,
                      itemBuilder: (c, i) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DoctorProfilePage(
                                        image:
                                            doctorcardlist[i].doctorImagesPath,
                                        doctorname:
                                            doctorcardlist[i].doctorName,
                                        profession:
                                            doctorcardlist[i].doctorprofession,
                                        timing: doctorcardlist[i].timing,
                                        phone: doctorcardlist[i].phone)));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Container(
                              padding: const EdgeInsets.only(left: 30),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple[100],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  // pic of dr
                                  Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset(
                                        doctorcardlist[i].doctorImagesPath,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  //rating of 5
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        doctorcardlist[i].rating,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  //dr name
                                  Text(
                                    doctorcardlist[i].doctorName,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  //dr tittle
                                  Text(doctorcardlist[i].doctorprofession),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    doctorcardlist[i].experience,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      })),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.home),
      //           label: 'Home',
      //           backgroundColor: Colors.green),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.medical_services),
      //           label: 'Doctor Page',
      //           backgroundColor: Colors.yellow),
      //     ],
      //     type: BottomNavigationBarType.shifting,
      //     currentIndex: _selectedIndex,
      //     selectedItemColor: Colors.black,
      //     iconSize: 40,
      //     onTap: _onItemTapped,
      //     elevation: 5),
    );
  }
}
//         bottomNavigationBar:
//         Material(
//           elevation: 7.0,
//           color: Colors.deepPurple,
//           child: Container(
//             height: 50.0,
//             width: MediaQuery.of(context).size.width,
//             child: Padding(
//               padding: const EdgeInsets.only(left: 8, right: 8),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => doctorpage(
//                                   doctorImagesPath: controller_1.text,
//                                   rating: controller_2.text,
//                                   doctorName: controller_3.text,
//                                   doctorprofession: controller_4.text)));
//                     },
//                     child: Container(
//                       height: 60,
//                       width: 60,
//                       decoration: BoxDecoration(
//                           border: Border.all(
//                             color: Colors.black,
//                             style: BorderStyle.solid,
//                             width: 100,
//                           ),
//                           borderRadius: BorderRadius.circular(10)),
//                       child: Center(
//                         child: Icon(
//                           Icons.medical_services,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ));
//   }
// }

