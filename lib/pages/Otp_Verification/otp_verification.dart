import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pixieapp/const/colors.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/createaccountbackground.png')),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/createaccountsmily.png'),
                Text(
                  'Verify your Mobile\nnumber',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.displayLarge!
                      .copyWith(fontSize: 34, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 20),
                Text(
                  'Check your SMS for a code we’ve sent you. It should be there. Else resend.',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(),
                ),
                const SizedBox(height: 30),
                const TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: " Enter otp",
                    hintStyle: TextStyle(
                        color: AppColors.textColorblue,
                        fontWeight: FontWeight.w400),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        strokeAlign: 5,
                        color: AppColors.textpurplelite,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.textpurplelite,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.textpurplelite,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .9,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      context.push('/HomePage');
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // foregroundColor: const Color.fromARGB(20, 120, 128, 51),
                      backgroundColor:
                          AppColors.buttonblue, // Text (foreground) color
                    ),
                    child: Text("Verify",
                        style: theme.textTheme.bodyMedium!.copyWith(
                            color: AppColors.textColorWhite,
                            fontSize: 17,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text("Resend code",
                        style: theme.textTheme.bodyMedium!.copyWith(
                            color: AppColors.textColorblue,
                            fontSize: 17,
                            fontWeight: FontWeight.w400)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
