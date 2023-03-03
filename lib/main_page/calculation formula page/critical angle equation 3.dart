import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:mathv15/main_page/calculation%20formula%20page/variables.dart';

class critical_angle_eq3 extends StatelessWidget {
  final variables = Variables();

  critical_angle_eq3({
    required real_epsilon_display, required im_epsilon_display,required r_epsilon_disply, required angle_epsilon_display,
    required real_epsilon_display_2, required im_epsilon_display_2,required r_epsilon_disply_2, required angle_epsilon_display_2,
    required Et_real_display, required root_2_display,required ca2_real_display,

  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Step By Step Guide',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0,),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox( height: 25),
                Math.tex(r'\sin\theta_c = \sqrt \frac{\varepsilon_{2C}}{\varepsilon_{1C}}', textStyle: const TextStyle(fontSize: 25)),
                const SizedBox( height: 25),
                Math.tex(r'\theta_c=' +variables.ca2_real_display, textStyle: const TextStyle(fontSize: 25)),
                const SizedBox( height: 25),
                Text("All Calculation are done in Rad mode", style:const TextStyle( fontWeight:FontWeight.bold, color: Colors.black , fontSize: 15, ) ),

                ExpansionTile(
                  backgroundColor: Colors.grey[300],
                  collapsedBackgroundColor: Colors.grey[300],
                  title: const Text("Guide",
                    style: TextStyle(color: Colors.black, fontSize: 20,),),
                  children: [
                    ExpansionTile(
                      title: Text("Input Variable:",
                        style: TextStyle(color: Colors.black, fontSize: 20,),),
                      children: [
                        ListTile(title: Math.tex(r'\Large\varepsilon_{1C}\normalsize= ' +variables.real_epsilon_display +r'+' +variables.im_epsilon_display +r'j',textStyle:const TextStyle(fontSize:20))),
                        ListTile(title: Math.tex(r'\Large\varepsilon_{2C}\normalsize= ' +variables.real_epsilon_display_2 +r'+' +variables.im_epsilon_display_2 +r'j',textStyle:const TextStyle(fontSize:20))),
                      ],
                    ),
                    ExpansionTile(
                      title: Text("Step 1:",
                        style: TextStyle(color: Colors.black, fontSize: 20,),),
                      children: [
                        ListTile(title: Math.tex(r'\large\frac{\varepsilon_{2C}}{\varepsilon_{1C}}\normalsize=' +variables.Et_real_display, textStyle: const TextStyle(fontSize: 18))),
                        ExpansionTile(
                          title: Text("More Details:",
                            style: TextStyle(color: Colors.black, fontSize: 20,),),
                          children: [
                            ListTile(title: Text.rich(TextSpan(text: 'Rec form :', style: TextStyle(fontSize: 18)))),
                            ListTile(title: Math.tex(r'\large\varepsilon_{1C}\normalsize=' +variables.real_epsilon_display +r'+' +variables.im_epsilon_display +r'j', textStyle: const TextStyle(fontSize: 18))),
                            ListTile(title: Text.rich(TextSpan(text: '________________________________', style: TextStyle(fontSize: 18)))),
                            ListTile(title: Text.rich(TextSpan(text: 'Polar Magnitude:', style: TextStyle(fontSize: 18)))),
                            ListTile(title: Math.tex(r'\sqrt{ ('+variables.real_epsilon_display +r')^2 +('+variables.im_epsilon_display +r')^2}='+variables.r_epsilon_disply , textStyle:const TextStyle(fontSize:18))),
                            ListTile(title: Text.rich(TextSpan(text: '________________________________', style: TextStyle(fontSize: 18)))),
                            ListTile(title: Text.rich(TextSpan(text: 'Polar Angle:', style: TextStyle(fontSize: 18)))),
                            ListTile(title: Math.tex(r'\large\tan^{-1}\normalsize \frac{' +variables.im_epsilon_display +r'}{' +variables.real_epsilon_display +r'}=' +variables.angle_epsilon_display, textStyle:const TextStyle(fontSize:18))),
                            ListTile(title: Text.rich(TextSpan(text: '________________________________', style: TextStyle(fontSize: 18)))),
                            ListTile(title: Text.rich(TextSpan(text: 'Rec form :', style: TextStyle(fontSize: 18)))),
                            ListTile(title: Math.tex(r'\large\varepsilon_{2C}\normalsize=' +variables.real_epsilon_display_2 +r'+' +variables.im_epsilon_display_2 +r'j', textStyle: const TextStyle(fontSize: 18))),
                            ListTile(title: Text.rich(TextSpan(text: '________________________________', style: TextStyle(fontSize: 18)))),
                            ListTile(title: Text.rich(TextSpan(text: 'Polar Magnitude:', style: TextStyle(fontSize: 18)))),
                            ListTile(title: Math.tex(r'\sqrt{ ('+variables.real_epsilon_display_2 +r')^2 +('+variables.im_epsilon_display_2 +r')^2}='+variables.r_epsilon_disply_2 , textStyle:const TextStyle(fontSize:18))),
                            ListTile(title: Text.rich(TextSpan(text: '________________________________', style: TextStyle(fontSize: 18)))),
                            ListTile(title: Text.rich(TextSpan(text: 'Polar Angle:', style: TextStyle(fontSize: 18)))),
                            ListTile(title: Math.tex(r'\large\tan^{-1}\normalsize \frac{' +variables.im_epsilon_display_2 +r'}{' +variables.real_epsilon_display_2 +r'}=' +variables.angle_epsilon_display_2, textStyle:const TextStyle(fontSize:18))),
                            ListTile(title: Text.rich(TextSpan(text: '________________________________', style: TextStyle(fontSize: 18)))),
                            ListTile(title: Text.rich(TextSpan(text: 'Simplify:', style: TextStyle(fontSize: 18)))),
                            ListTile(title: Math.tex(r'\large\frac{\varepsilon_{2C}}{\varepsilon_{1C}}\normalsize= \frac{' +variables.r_epsilon_disply +r'\ \angle' +variables.angle_epsilon_display +r'}{' +variables.r_epsilon_disply_2 +r'\ \angle' +variables.angle_epsilon_display_2 +r'}', textStyle: const TextStyle(fontSize: 18))),
                            ListTile(title: Math.tex(r'\ \ \ \ \ \ \ \  = ' +variables.Et_real_display +r'\ \angle 0'  , textStyle:const TextStyle(fontSize:18)))
                          ],
                        ),
                      ],
                    ),

                    ExpansionTile(
                      title: Text("Step 2:",
                        style: TextStyle(color: Colors.black, fontSize: 20,),),
                      children: [
                        ListTile(title: Math.tex(r'\sqrt \frac{\varepsilon_{2C}}{\varepsilon_{1C}}', textStyle: TextStyle(fontSize: 18))),
                        ListTile(title: Math.tex(r'= ' +variables.root_2_display, textStyle: TextStyle(fontSize: 18))),
                        ExpansionTile(
                          title: Text("More Details:",
                            style: TextStyle(color: Colors.black, fontSize: 20,),),
                          children: [
                            ListTile(title: Math.tex(r'\large\sqrt\frac{\varepsilon_2}{\varepsilon_1}\normalsize', textStyle: TextStyle(fontSize: 18))),
                            ListTile(title: Math.tex(r'= \sqrt{' +variables.Et_real_display +r'}', textStyle: TextStyle(fontSize: 18))),
                            ListTile(title: Math.tex(r'= ' +variables.root_2_display, textStyle: TextStyle(fontSize: 18))),
                          ],
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text("Step 3:",
                        style: TextStyle(color: Colors.black, fontSize: 20,),),
                      children: [
                        ListTile(title: Math.tex(r'\large\theta_c\normalsize=' +variables.ca2_real_display,textStyle:const TextStyle(fontSize:18))),
                        ExpansionTile(
                          title: Text("More Details:",
                            style: TextStyle(color: Colors.black, fontSize: 20,),),
                          children: [
                            ListTile(title: Math.tex(r'\large\sin\theta_c\normalsize = \large\sqrt\frac{\varepsilon_2}{\varepsilon_1}',textStyle:const TextStyle(fontSize:18))),
                            ListTile(title: Math.tex(r'\ \ \ \ \ \ \ \ \ \ \ = ' +variables.root_2_display ,textStyle:const TextStyle(fontSize:18))),
                            ListTile(title: Text.rich(TextSpan(text: '________________________________', style: TextStyle(fontSize: 18)))),
                            ListTile(title: Math.tex(r'\large\theta_c\normalsize = \large\sin^{-1}\sqrt\frac{\varepsilon_2}{\varepsilon_1}',textStyle:const TextStyle(fontSize:18))),
                            ListTile(title: Math.tex(r'\ \ \ \ \ = \large\sin^{-1}\normalsize(' +variables.root_2_display +r')',textStyle:const TextStyle(fontSize:18))),
                            ListTile(title: Math.tex(r'\ \ \ \ \ = ' +variables.ca2_real_display ,textStyle:const TextStyle(fontSize:18))),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}