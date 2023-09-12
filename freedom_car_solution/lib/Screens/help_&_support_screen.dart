import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freedom_car_solution/Utils/colors.dart';
import 'package:freedom_car_solution/Utils/utils.dart';
class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({Key? key});

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  @override
  Widget build(BuildContext context) {
    FrameSize.init(context: context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: Text(
              "Help & Support",
              style: TextStyle(
                fontSize: FrameSize.screenWidth * 0.06,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryAppColor,
              ),
            ),
          ),
            SizedBox(height: 50),
           Container(
             height: MediaQuery.of(context).size.height*0.20,
               child: Image.asset("assets/images/icons/help_img.png")

           ),
          SizedBox(height: FrameSize.screenHeight * 0.05,),
          Center(
            child: Padding(
              padding:  EdgeInsets.all(16.0),
              child: Text(
                """Now you know what dummy text is, let’s learn about its usefulness. Some people say that they don’t need to use a dummy text generator to deliver a web design project to the customer. Even though this might be true, the effect that the final project will produce on the client won’t be as satisfactory as in the case of one with included filler content.

A dummy text generator gives web designers the content they need. Then, they can use the typefaces and layout they prefer, thus obtaining the best mock-up of their work. It would be best to be impossible to understand and read because people might get distracted by the text itself and its nonsense rather than analyzing how the typefaces integrate into the design instead.""",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ServiceCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ServiceCard({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          child: Icon(icon),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionButton({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}