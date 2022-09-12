// import 'package:firebase_auth/firebase_auth.dart';
// import "package:flutter/material.dart";

// import 'package:otp/util/startup.dart';

// enum MobileVerificationState {
//   SHOW_MOBILE_FORM_STATE,
//   SHOW_OTP_FORM_STATE,
// }

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   MobileVerificationState currentState =
//       MobileVerificationState.SHOW_MOBILE_FORM_STATE;

//   final phoneController = TextEditingController();
//   final otpController = TextEditingController();

//   FirebaseAuth _auth = FirebaseAuth.instance;

//   String verificationId = '';

//   bool showLoading = false;

//   void signInWithPhoneAuthCredential(
//       PhoneAuthCredential phoneAuthCredential) async {
//     setState(() {
//       showLoading = true;
//     });

//     try {
//       final authCredential =
//           await _auth.signInWithCredential(phoneAuthCredential);

//       setState(() {
//         showLoading = false;
//       });

//       if (authCredential.user != null) {
//         // ignore: use_build_context_synchronously
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => const Startup()));
//       }
//     } on FirebaseAuthException catch (e) {
//       setState(() {
//         showLoading = false;
//       });

//       _scaffoldKey.currentState
//           ?.showSnackBar(const SnackBar(content: Text("s")));
//     }
//   }

//   getMobileFormWidget(context) {
//     return Column(
//       children: [
//         const Spacer(),
//         TextField(
//           controller: phoneController,
//           decoration: const InputDecoration(
//             hintText: "Phone Number",
//           ),
//         ),
//         const SizedBox(
//           height: 16,
//         ),
//         ElevatedButton(
//           onPressed: () async {
//             setState(() {
//               showLoading = true;
//             });

//             await _auth.verifyPhoneNumber(
//               phoneNumber: phoneController.text,
//               verificationCompleted: (phoneAuthCredential) async {
//                 setState(() {
//                   showLoading = false;
//                 });
//                 //signInWithPhoneAuthCredential(phoneAuthCredential);
//               },
//               verificationFailed: (verificationFailed) async {
//                 setState(() {
//                   showLoading = false;
//                 });
//                 _scaffoldKey.currentState
//                     ?.showSnackBar(const SnackBar(content: Text("as")));
//               },
//               codeSent: (verificationId, resendingToken) async {
//                 setState(() {
//                   showLoading = false;
//                   currentState = MobileVerificationState.SHOW_OTP_FORM_STATE;
//                   this.verificationId = verificationId;
//                 });
//               },
//               codeAutoRetrievalTimeout: (verificationId) async {},
//             );
//           },
//           child: const Text("SEND"),
//         ),
//         const Spacer(),
//       ],
//     );
//   }

//   getOtpFormWidget(context) {
//     return Column(
//       children: [
//         const Spacer(),
//         TextField(
//           controller: otpController,
//           decoration: const InputDecoration(
//             hintText: "Enter OTP",
//           ),
//         ),
//         const SizedBox(
//           height: 16,
//         ),
//         ElevatedButton(
//           onPressed: () async {
//             PhoneAuthCredential phoneAuthCredential =
//                 PhoneAuthProvider.credential(
//                     verificationId: verificationId,
//                     smsCode: otpController.text);

//             signInWithPhoneAuthCredential(phoneAuthCredential);
//           },
//           child: const Text("VERIFY"),
//         ),
//         const Spacer(),
//       ],
//     );
//   }

//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         key: _scaffoldKey,
//         body: Container(
//           child: showLoading
//               ? const Center(
//                   child: CircularProgressIndicator(),
//                 )
//               : currentState == MobileVerificationState.SHOW_MOBILE_FORM_STATE
//                   ? getMobileFormWidget(context)
//                   : getOtpFormWidget(context),
//           padding: const EdgeInsets.all(16),
//         ));
//   }
// }
