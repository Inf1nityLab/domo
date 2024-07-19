//
//
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class OTP extends StatelessWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Otp(),
        Otp(),
        Otp(),
        Otp(),
      ],
    );
  }
}

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 80,
      child: TextFormField(
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.number,
        maxLength: 1,
        showCursor: false,

        style: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
        decoration: InputDecoration(
          counterText: '',
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 30, vertical: 15),

          hintStyle: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: AppColors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color: AppColors.grey, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color: AppColors.blue, width: 1.0),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color: AppColors.red, width: 1.0),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import '../../../../core/theme/app_colors.dart';
//
// class OTP extends StatefulWidget {
//   const OTP({super.key});
//
//   @override
//   State<OTP> createState() => _OTPState();
// }
//
// class _OTPState extends State<OTP> {
//   final List<FocusNode> _otpFields = List.generate(4, (index) => FocusNode());
//   final List<TextEditingController> _otpControllers =
//       List.generate(4, (index) => TextEditingController());
//
//   @override
//   void initState() {
//     super.initState();
//     _otpFields.first.requestFocus(); // Focus on the first field initially
//   }
//
//   @override
//   void dispose() {
//     _otpFields.forEach((focusNode) => focusNode.dispose());
//     _otpControllers.forEach((controller) => controller.dispose());
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: List.generate(_otpFields.length, (index) {
//         return SizedBox(
//           width: 80,
//           child: TextField(
//             maxLength: 1,
//             controller: _otpControllers[index],
//             style: TextStyle(
//               fontSize: 32,
//               fontWeight: FontWeight.w400,
//               color: AppColors.black,
//             ),
//             decoration: InputDecoration(
//               counterText: '',
//               contentPadding:
//                   const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
//               hintStyle: const TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w400,
//                   color: AppColors.grey),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(25),
//                 borderSide: const BorderSide(color: AppColors.grey, width: 1.0),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(25),
//                 borderSide: const BorderSide(color: AppColors.blue, width: 1.0),
//               ),
//               errorBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(25),
//                 borderSide: const BorderSide(color: AppColors.red, width: 1.0),
//               ),
//             ),
//             keyboardType: TextInputType.number,
//             // Ensure numeric input
//             onChanged: (value) {
//               if (value.isNotEmpty && index < _otpFields.length - 1) {
//                 _otpFields[index + 1]
//                     .requestFocus(); // Move focus to next field
//               }
//             },
//             onSubmitted: (value) {
//               if (value.isNotEmpty && index == _otpFields.length - 1) {
//                 // Handle all digits entered (optional: submit OTP)
//                 print('All OTP digits entered: $_otpControllers.join("")');
//               }
//             },
//           ),
//         );
//       }),
//     );
//   }
// }
