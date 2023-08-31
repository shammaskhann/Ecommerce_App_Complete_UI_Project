import 'package:flutter/material.dart';
import '../resources/AppColor.dart';

class CenterRoundButton extends StatefulWidget {
  final String title;
  final bool loading;
  final Icon? suffixIcon;
  final VoidCallback onTap;
  const CenterRoundButton(
      {required this.title,
      required this.loading,
      this.suffixIcon,
      required this.onTap,
      super.key});

  @override
  State<CenterRoundButton> createState() => _CenterRoundButtonState();
}

class _CenterRoundButtonState extends State<CenterRoundButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 61),
      child: InkWell(
        onTap: () {
          widget.onTap();
        },
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
              child: (widget.loading == false)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.title,
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.bold,
                            color: AppColor.black60,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        widget.suffixIcon ?? Container(),
                      ],
                    )
                  : CircularProgressIndicator(
                      color: AppColor.black60,
                    )),
        ),
      ),
    );
  }
}
