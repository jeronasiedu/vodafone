import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:vodafone/theme/app.dart';

class CashPage extends StatefulWidget {
  const CashPage({Key? key}) : super(key: key);

  @override
  State<CashPage> createState() => _CashPageState();
}

class _CashPageState extends State<CashPage> {
  final controller = TextEditingController();
  final focusNode = FocusNode();

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  final borderColor = Color.fromRGBO(114, 178, 238, 1);
  final errorColor = Color.fromRGBO(255, 234, 238, 1);
  final fillColor = Color.fromRGBO(222, 231, 240, .57);
  TextStyle textStyle = GoogleFonts.poppins();
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: GoogleFonts.poppins(
        fontSize: 22,
        color: const Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.red,
      body: Center(
        child: Container(
          height: 190,
          width: double.maxFinite,
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width - 30,
          ),
          // padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                Shadow.sm,
              ]),
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "Please enter your pin",
                        style: textStyle,
                      ),
                    ),
                    Pinput(
                      controller: controller,
                      focusNode: focusNode,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: defaultPinTheme.copyWith(
                        height: 68,
                        width: 64,
                        decoration: defaultPinTheme.decoration!.copyWith(
                          border: Border.all(color: borderColor),
                        ),
                      ),
                      errorPinTheme: defaultPinTheme.copyWith(
                        decoration: BoxDecoration(
                          color: errorColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        controller.clear();
                      },
                      child: Text(
                        "Clear Pin",
                        style: textStyle,
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: const Alignment(0, -1.6),
                child: Image.asset(
                  'assets/tobi.png',
                  width: 60,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
