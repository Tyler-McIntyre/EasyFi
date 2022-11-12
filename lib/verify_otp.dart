import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:EasyFi/dashboard.dart';
import 'appbar/title.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({super.key});

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  static const phoneNumber = '+1 (156)-485-4825';
  final focus1 = FocusNode();
  final focus2 = FocusNode();
  final focus3 = FocusNode();
  final focus4 = FocusNode();
  final focus5 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: getTitle(context),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(
              Icons.support_agent,
              size: 30,
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const Expanded(child: SizedBox.shrink()),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Column(
                        children: [
                          Text(
                            'Please enter the code sent to',
                            style:
                                Theme.of(context).primaryTextTheme.bodyMedium,
                          ),
                          Text(
                            phoneNumber,
                            style:
                                Theme.of(context).primaryTextTheme.bodyMedium,
                          )
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 50,
                        child: TextField(
                          maxLines: 1,
                          maxLength: 1,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          keyboardType: TextInputType.phone,
                          autofocus: true,
                          onChanged: (v) {
                            FocusScope.of(context).requestFocus(focus1);
                          },
                          decoration: const InputDecoration(
                            counterText: "",
                            labelStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                          style: Theme.of(context).primaryTextTheme.labelSmall,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: TextField(
                          maxLines: 1,
                          maxLength: 1,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          keyboardType: TextInputType.phone,
                          focusNode: focus1,
                          onChanged: (v) {
                            FocusScope.of(context).requestFocus(focus2);
                          },
                          decoration: const InputDecoration(
                            counterText: "",
                            labelStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                          style: Theme.of(context).primaryTextTheme.labelSmall,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: TextField(
                          maxLines: 1,
                          maxLength: 1,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          keyboardType: TextInputType.phone,
                          focusNode: focus2,
                          onChanged: (v) {
                            FocusScope.of(context).requestFocus(focus3);
                          },
                          decoration: const InputDecoration(
                            counterText: "",
                            labelStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                          style: Theme.of(context).primaryTextTheme.labelSmall,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: TextField(
                          maxLines: 1,
                          maxLength: 1,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          keyboardType: TextInputType.phone,
                          focusNode: focus3,
                          onChanged: (v) {
                            FocusScope.of(context).requestFocus(focus4);
                          },
                          decoration: const InputDecoration(
                            counterText: "",
                            labelStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                          style: Theme.of(context).primaryTextTheme.labelSmall,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: TextField(
                          maxLines: 1,
                          maxLength: 1,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          keyboardType: TextInputType.phone,
                          focusNode: focus4,
                          onChanged: (v) {
                            FocusScope.of(context).requestFocus(focus5);
                          },
                          decoration: const InputDecoration(
                            counterText: "",
                            labelStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                          style: Theme.of(context).primaryTextTheme.labelSmall,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: TextField(
                          maxLines: 1,
                          maxLength: 1,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          keyboardType: TextInputType.phone,
                          focusNode: focus5,
                          decoration: const InputDecoration(
                            counterText: "",
                            labelStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                          style: Theme.of(context).primaryTextTheme.labelSmall,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Didn\'t receive a code?',
                        style: Theme.of(context).primaryTextTheme.labelSmall,
                      ),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              return Colors.blue;
                            },
                          ),
                          padding: MaterialStateProperty.resolveWith<
                              EdgeInsetsGeometry?>(
                            (Set<MaterialState> states) {
                              return const EdgeInsets.fromLTRB(10, 7, 0, 0);
                            },
                          ),
                          textStyle:
                              MaterialStateProperty.resolveWith<TextStyle?>(
                            (Set<MaterialState> states) {
                              return const TextStyle(
                                  color: Colors.red,
                                  fontSize: 20); // defer to the defaults
                            },
                          ),
                        ),
                        child: const Text('RESEND'),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 65,
                    width: MediaQuery.of(context).size.width / 1.05,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                            child: ElevatedButton(
                          onPressed: () {
                            //TODO: Verify OTP
                            //if successful, navigate to dashboard
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const Dashboard(),
                              ),
                            );
                          },
                          child: const Text('Continue'),
                        )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
