import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:extended_math/extended_math.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'calculation formula page/Choose CA page.dart';
import 'calculation formula page/variables.dart';
import 'calculation formula page/choose CPC page.dart';
import 'calculation formula page/choose CII page.dart';


class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);
  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  final variables = Variables();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Math v15'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: const [
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
                Card(
                  color: Colors.blue[900],
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 35, 15.0, 40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const <Widget>[
                        Text(
                          'Input\n Medium 1 Variables',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),

                Row(
                  children: [
                    Expanded(
                      child:
                      SizedBox(
                        height: 100,
                        width: 170,
                        child: TextField(
                          controller: variables.controller1,
                          decoration: InputDecoration(
                              label: Math.tex(r'\alpha \ \scriptsize Np/m',
                                  textStyle: const TextStyle(fontSize: 25)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))
                          ),
                          keyboardType: TextInputType.text,
                          onEditingComplete: () {
                            _vaildateUserinput3(variables.controller1.text) &&
                                _vaildateUserinput3(variables.controller2.text);
                          },
                          //keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                          //inputFormatters: <TextInputFormatter>[
                          // FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                          //],
                        ),
                      ),

                    ),

                    const SizedBox(
                      width: 10,
                    ),

                    Expanded(child:
                    SizedBox(
                      height: 100,
                      width: 170,
                      child: TextField(
                        controller: variables.controller2,
                        decoration: InputDecoration(
                            label: Math.tex(r'\beta\ \scriptsize rad/m',
                                textStyle: const TextStyle(fontSize: 25)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))
                        ),
                        keyboardType: TextInputType.text,
                        onEditingComplete: () {
                          _vaildateUserinput3(variables.controller1.text) &&
                              _vaildateUserinput3(variables.controller2.text);
                        },
                        // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                        //inputFormatters: <TextInputFormatter>[
                        //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                        // ],
                      ),
                    ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 100,
                        width: 170,
                        child: TextField(
                          controller: variables.controller3,
                          decoration: InputDecoration(
                              label: Math.tex(r'\omega \  \scriptsize rad/s',
                                  textStyle: const TextStyle(fontSize: 25)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))
                          ),
                          keyboardType: TextInputType.text,
                          onEditingComplete: () {
                            _vaildateUserinput4(variables.controller3.text);
                          },
                          // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                          //inputFormatters: <TextInputFormatter>[
                          //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                          // ],
                        ),
                      ),
                    ),

                    const SizedBox(
                      width: 10,
                    ),

                    Expanded(child:
                    SizedBox(

                      height: 100,
                      width: 170,
                      child: TextField(
                        controller: variables.controller4,
                        decoration: InputDecoration(
                            label: Math.tex(r'\mu_{\scriptsize 1 \normalsize r}',
                                textStyle: const TextStyle(fontSize: 25)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))
                        ),
                        keyboardType: TextInputType.text,
                        onEditingComplete: () {
                          _vaildateUserinput4(variables.controller4.text);
                        },
                        // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                        //inputFormatters: <TextInputFormatter>[
                        //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                        // ],
                      ),
                    ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 100,
                        width: 170,
                        child: TextField(
                          controller: variables.controller5,
                          decoration: InputDecoration(
                              label: Math.tex(
                                  r'\varepsilon_{\scriptsize 1 \normalsize c \scriptsize \ Real \ Part}',
                                  textStyle: const TextStyle(fontSize: 25)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))
                          ),
                          keyboardType: TextInputType.text,
                          onEditingComplete: () {
                            variables.controller7.text = '';
                            variables.controller8.text = '';
                            variables.controller10.text = '';
                            _vaildateUserinput4(variables.controller5.text);
                          },
                          // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                          //inputFormatters: <TextInputFormatter>[
                          //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                          // ],
                        ),
                      ),
                    ),

                    const SizedBox(
                      width: 10,
                    ),

                    Expanded(
                      child: SizedBox(
                        height: 100,
                        width: 170,
                        child: TextField(
                          controller: variables.controller6,
                          decoration: InputDecoration(
                              label: Math.tex(
                                  r'\varepsilon_{\scriptsize 1 \normalsize c \scriptsize \ Im \ Part}',
                                  textStyle: const TextStyle(fontSize: 25)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))
                          ),
                          keyboardType: TextInputType.text,
                          onEditingComplete: () {
                            variables.controller7.text = '';

                            variables.controller10.text = '';
                            _vaildateUserinput4(variables.controller6.text);
                          },
                          // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                          //inputFormatters: <TextInputFormatter>[
                          //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                          // ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 100,
                        width: 170,
                        child: TextField(
                          controller: variables.controller7,
                          decoration: InputDecoration(
                              label: Math.tex(r'\varepsilon_{\scriptsize 1 \normalsize r}',
                                  textStyle: const TextStyle(fontSize: 25)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))
                          ),
                          keyboardType: TextInputType.text,
                          onEditingComplete: () {
                            variables.controller5.text = '';
                            variables.controller6.text = '';
                            _vaildateUserinput4(variables.controller7.text);
                          },
                          // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                          //inputFormatters: <TextInputFormatter>[
                          //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                          // ],
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),

                    Expanded(
                      child: SizedBox(
                        height: 100,
                        width: 170,
                        child: TextField(
                          controller: variables.controller8,
                          decoration: InputDecoration(
                              label: Math.tex(r'\sigma\  \scriptsize S/m',
                                  textStyle: const TextStyle(fontSize: 25)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))
                          ),
                          keyboardType: TextInputType.text,
                          onEditingComplete: () {
                            variables.controller5.text = '';

                            _vaildateUserinput4(variables.controller8.text);
                          },
                          // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                          //inputFormatters: <TextInputFormatter>[
                          //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                          // ],
                        ),
                      ),
                    ),
                  ],
                ),


                Card(
                  color: Colors.blue[900],
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 35, 15.0, 40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          'Input\n Medium 2 Variables\n(optianal)',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 100,
                        width: 170,
                        child: TextField(
                          controller: variables.controller9,
                          decoration: InputDecoration(
                              label: Math.tex(r'\mu_{\scriptsize 2 \normalsize r}',
                                  textStyle: const TextStyle(fontSize: 25)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))
                          ),
                          keyboardType: TextInputType.text,
                          // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                          //inputFormatters: <TextInputFormatter>[
                          //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                          // ],
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),

                    Expanded(
                      child: SizedBox(
                        height: 100,
                        width: 170,
                        child: TextField(
                          controller: variables.controller10,
                          decoration: InputDecoration(
                              label: Math.tex(r'\varepsilon_{\scriptsize 2 \normalsize r} ',
                                  textStyle: const TextStyle(fontSize: 25)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))
                          ),
                          keyboardType: TextInputType.text,
                          onEditingComplete: () {
                            _vaildateUserinput4(variables.controller10.text);
                          },
                          // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                          //inputFormatters: <TextInputFormatter>[
                          //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                          // ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 100,
                        width: 170,
                        child: TextField(
                          controller: variables.controller11,
                          decoration: InputDecoration(
                              label: Math.tex(r'\varepsilon_{\scriptsize 2 \normalsize c \ \scriptsize Real\ Part}',
                                  textStyle: const TextStyle(fontSize: 25)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))
                          ),
                          keyboardType: TextInputType.text,
                          onEditingComplete: () {
                            variables.controller10.text = '';
                            _vaildateUserinput4(variables.controller11.text);
                          },
                          // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                          //inputFormatters: <TextInputFormatter>[
                          //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                          // ],
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),

                    Expanded(
                      child: SizedBox(
                        height: 100,
                        width: 170,
                        child: TextField(
                          controller: variables.controller12,
                          decoration: InputDecoration(
                              label: Math.tex(r'\varepsilon_{\scriptsize 2 \normalsize c\ \scriptsize Im\ Part}',
                                  textStyle: const TextStyle(fontSize: 25)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))
                          ),
                          keyboardType: TextInputType.text,
                          onEditingComplete: () {
                            variables.controller10.text = '';
                            _vaildateUserinput4(variables.controller12.text);
                          },
                          // keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                          //inputFormatters: <TextInputFormatter>[
                          //  FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                          // ],
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 80,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                                  _vaildateUserinput(variables.controller1.text) &&
                                  _vaildateUserinput(variables.controller2.text) &&
                                  _vaildateUserinput(variables.controller3.text) &&
                                  _vaildateUserinput(variables.controller4.text) &&
                                  _vaildateUserinput(variables.controller5.text) &&
                                  _vaildateUserinput(variables.controller6.text) &&
                                  _vaildateUserinput(variables.controller7.text) &&
                                  _vaildateUserinput(variables.controller8.text);
                            },

                            child: Math.tex(
                                r'\varUpsilon =' + variables.ans_1 + r'+' + variables.ans_2 + r'j',
                                textStyle: const TextStyle(fontSize: 25)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 80,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                                  _vaildateUserinput1(variables.controller3.text) &&
                                  _vaildateUserinput1(variables.controller4.text) &&
                                  _vaildateUserinput1(variables.controller5.text) &&
                                  _vaildateUserinput1(variables.controller6.text) &&
                                  _vaildateUserinput1(variables.controller7.text) &&
                                  _vaildateUserinput1(variables.controller8.text);
                            },

                            child: Math.tex(
                                r'\eta_c =' + variables.ans_3 + r'+' + variables.ans_4 + r'j',
                                textStyle: const TextStyle(fontSize: 25)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 80,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              _vaildateUserinput2(variables.controller5.text) &&
                                  _vaildateUserinput2(variables.controller6.text) &&
                                  _vaildateUserinput2(variables.controller7.text) &&
                                  _vaildateUserinput2(variables.controller10.text) &&
                                  _vaildateUserinput2(variables.controller11.text) &&
                                  _vaildateUserinput2(variables.controller12.text);
                            },

                            child: Math.tex(
                                r'\theta_c  =' + variables.ans_5 + r'+' + variables.ans_6 + r'j',
                                textStyle: const TextStyle(fontSize: 25)),
                          ),
                        ),
                      ),
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

  //Jump to CPC page.dart
  _vaildateUserinput(String input) {

    Navigator.push(context,
            MaterialPageRoute(
                builder: (context) =>
                    choose_CPC_page()
            ),
        );
      }

  //Jump to CII page.dart
  _vaildateUserinput1(String input) {

        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) =>
                    choose_CII_page()
            ),
        );
    }

  //Jump to CAP page.dart
  _vaildateUserinput2(String input) {

    Navigator.push(context,
      MaterialPageRoute(
          builder: (context) =>
              choose_CA_page()
      ),
    );
  }

  //Auto update user input base on the input given 1,2
  _vaildateUserinput3(String input) {
    if (variables.controller1.text.isNotEmpty) {
      setState(() {
        variables.alpha = double.parse(variables.controller1.text);
        final a = variables.alpha.toStringAsPrecision(4);
        variables.a = a;
        variables.ans_1 = a;
        if (variables.controller2.text.isNotEmpty) {
          setState(() {
            variables.beta = double.parse(variables.controller2.text);
            final b = variables.beta.toStringAsPrecision(4);
            variables.b = b;
            variables.ans_2 = b;
            if (variables.controller3.text.isNotEmpty && variables.controller4.text.isNotEmpty &&
                variables.controller5.text.isNotEmpty && variables.controller6.text.isNotEmpty) {
              setState(() {
                variables.controller3.text = variables.controller4.text = variables.controller5.text =
                    variables.controller6.text = "";
              });
            }
          });
        }

        else {
          variables.ans_2 = '0';
        }
      });
    }
    else {
      variables.ans_1 = '0';
      if (variables.controller2.text.isNotEmpty) {
        setState(() {
          variables.beta = double.parse(variables.controller2.text);
          final b = variables.beta.toStringAsPrecision(4);
          variables.ans_2 = b;
          if (variables.controller3.text.isNotEmpty && variables.controller4.text.isNotEmpty &&
              variables.controller5.text.isNotEmpty && variables.controller6.text.isNotEmpty) {
            setState(() {
              variables.controller3.text = variables.controller4.text = variables.controller5.text =
                  variables.controller6.text = variables.controller7.text = variables.controller8.text = "";
            });
          }
        });
      }
    }
  }

  //Auto update user input base on the input given 3,4,5,6,7,8
  _vaildateUserinput4(String input) {
    if (variables.controller3.text.isNotEmpty && variables.controller4.text.isNotEmpty &&
        variables.controller5.text.isNotEmpty && variables.controller6.text.isNotEmpty) {
      setState(() {
        variables.omega = double.parse(variables.controller3.text);
        variables.mu = double.parse(variables.controller4.text);
        variables.real_epsilon = double.parse(variables.controller5.text);
        variables.im_epsilon = double.parse(variables.controller6.text);
        final neg_im_epsilon = -1* variables.im_epsilon;
        //calculation
        // sqrt(mu*Ec) = ??
        final u = variables.mu * variables.mu_o;
        final E = Complex(re: variables.real_epsilon, im: neg_im_epsilon);
        final x = E.module * u;
        final z = sqrt(x);
        final angle = E.argument / 2;

        //jw
        final w = Complex(re: 0, im: variables.omega);
        final R_jw = w.module;
        final angle_jw = w.argument;

        //result
        final R_propagration_constant1 = R_jw * z;
        final angle_propagration_constant1 = angle_jw + angle;
        final real_propagration_constant1 = R_propagration_constant1 *
            cos(angle_propagration_constant1);
        final im_propagration_constant1 = R_propagration_constant1 *
            sin(angle_propagration_constant1);
        final epsilon_r = variables.real_epsilon / variables.epsilon_o;
        final sigma = variables.im_epsilon / variables.omega;
        //display constant with 3 significant
        final mu_display = variables.mu.toStringAsFixed(4);
        final u_display = u.toStringAsExponential(4);
        final real_epsilon_display = variables.real_epsilon.toStringAsPrecision(4);
        final im_epsilon_display = variables.im_epsilon.toStringAsPrecision(4);
        final neg_im_epsilon_display = neg_im_epsilon.toStringAsPrecision(4);
        final root_R_display = E.module.toStringAsPrecision(4);
        final root_angle_display = E.argument.toStringAsPrecision(4);
        final root_real_display = z.toStringAsPrecision(4);
        final root_im_display = angle.toStringAsPrecision(4);
        final polar_R_display = x.toStringAsPrecision(4);
        final omega_display = variables.omega.toStringAsPrecision(4);
        final R_jw_display = R_jw.toStringAsPrecision(4);
        final angle_jw_display = angle_jw.toStringAsPrecision(4);
        final R_propagration_constant1_display = R_propagration_constant1
            .toStringAsPrecision(4);
        final angle_propagration_constant1_display = angle_propagration_constant1
            .toStringAsPrecision(4);
        final real_propagration_constant1_display = real_propagration_constant1
            .toStringAsPrecision(4);
        final im_propagration_constant1_display = im_propagration_constant1
            .toStringAsPrecision(4);
        final epsilon_r_display = epsilon_r.toStringAsPrecision(4);
        final sigma_display = sigma.toStringAsPrecision(4);

        variables.mu_display = mu_display;
        variables.u_display = u_display;
        variables.real_epsilon_display = real_epsilon_display;
        variables.im_epsilon_display = im_epsilon_display;
        variables.neg_im_epsilon_display = neg_im_epsilon_display;
        variables.root_R_display = root_R_display;
        variables.root_angle_display = root_angle_display;
        variables.root_real_display = root_real_display;
        variables.root_im_display = root_im_display;
        variables.polar_R_display = polar_R_display;
        variables.omega_display = omega_display;
        variables.R_jw_display = R_jw_display;
        variables.angle_jw_display = angle_jw_display;
        variables.R_propagration_constant1_display = R_propagration_constant1_display;
        variables.angle_propagration_constant1_display = angle_propagration_constant1_display;
        variables.real_propagration_constant1_display = real_propagration_constant1_display;
        variables.im_propagration_constant1_display = im_propagration_constant1_display;


        variables.ans_1 = real_propagration_constant1_display;
        variables.ans_2 = im_propagration_constant1_display;
        variables.controller1.text = real_propagration_constant1_display;
        variables.controller2.text = im_propagration_constant1_display;
        variables.controller7.text = epsilon_r_display;
        variables.controller8.text = sigma_display;


        //calculation
        final g_real = u / E.module;
        final g_angle = -1 * E.argument;
        final q_square_real = sqrt(g_real);
        final g_square_angle = g_angle / 2;
        final g_sqaure_re = q_square_real * cos(g_square_angle);
        final g_sqaure_im = q_square_real * sin(g_square_angle);

        //display constant with 3 significant
        final g_sqaure_re_display = g_sqaure_re.toStringAsPrecision(4);
        final g_sqaure_im_display = g_sqaure_im.toStringAsPrecision(4);
        variables.ans_3 = g_sqaure_re_display;
        variables.ans_4 = g_sqaure_im_display;
      });
    }
    else {
      if (variables.controller4.text.isNotEmpty && variables.controller5.text.isNotEmpty &&
          variables.controller6.text.isNotEmpty && variables.controller3.text.isEmpty) {
        setState(() {
          variables.mu = double.parse(variables.controller4.text);
          variables.real_epsilon = double.parse(variables.controller5.text);
          variables.im_epsilon = double.parse(variables.controller6.text);
          variables.mu_o = (4 * pi) * pow(10, -7);
          //calculation
          final neg_im_epsilon = -1 * variables.im_epsilon;
          final E = Complex(re: variables.real_epsilon, im: neg_im_epsilon);
          final u = variables.mu * variables.mu_o;
          final g_real = u / E.module;
          final g_angle = -1 * E.argument;
          final q_square_real = sqrt(g_real);
          final g_square_angle = g_angle / 2;
          final g_sqaure_re = q_square_real * cos(g_square_angle);
          final g_sqaure_im = q_square_real * sin(g_square_angle);
          final epsilon_r = variables.real_epsilon / variables.epsilon_o;
          //display constant with 3 significant
          final mu_display = variables.mu.toStringAsFixed(4);
          final u_display = u.toStringAsPrecision(4);
          final real_epsilon_display = variables.real_epsilon.toStringAsPrecision(4);
          final im_epsilon_display = variables.im_epsilon.toStringAsPrecision(4);
          final neg_im_epsilon_display = neg_im_epsilon.toStringAsPrecision(4);
          final root_R_display = E.module.toStringAsPrecision(4);
          final root_angle_display = E.argument.toStringAsPrecision(4);
          final q_real_display = g_real.toStringAsPrecision(4);
          final q_angle_display = g_angle.toStringAsPrecision(4);
          final q_square_real_display = q_square_real.toStringAsPrecision(4);
          final g_square_angle_display = g_square_angle.toStringAsPrecision(4);
          final g_sqaure_re_display = g_sqaure_re.toStringAsPrecision(4);
          final g_sqaure_im_display = g_sqaure_im.toStringAsPrecision(4);
          final epsilon_r_display = epsilon_r.toStringAsPrecision(4);
          variables.mu_display = mu_display;
          variables.u_display = u_display;
          variables.real_epsilon_display = real_epsilon_display;
          variables.im_epsilon_display = im_epsilon_display;
          variables.neg_im_epsilon_display = neg_im_epsilon_display;
          variables.root_R_display = root_R_display;
          variables.root_angle_display = root_angle_display;
          variables.q_real_display = q_real_display;
          variables.q_angle_display = q_angle_display;
          variables.q_square_real_display = q_square_real_display;
          variables.g_square_angle_display = g_square_angle_display;
          variables.g_sqaure_re_display = g_sqaure_re_display;
          variables.g_sqaure_im_display = g_sqaure_im_display;
          variables.epsilon_r_display = epsilon_r_display;

          variables.ans_3 = g_sqaure_re_display;
          variables.ans_4 = g_sqaure_im_display;
          variables.controller7.text = variables.epsilon_r_display;

        });
      }

      else if (variables.controller3.text.isNotEmpty && variables.controller4.text.isNotEmpty &&
          variables.controller7.text.isNotEmpty && variables.controller8.text.isNotEmpty) {
        setState(() {
          variables.omega = double.parse(variables.controller3.text);
          variables.mu = double.parse(variables.controller4.text);
          variables.epsilon_r = double.parse(variables.controller7.text);
          variables.sigma = double.parse(variables.controller8.text);
          //calculation
          // j(sigma/omega)
          final sm_om = variables.sigma / variables.omega;
          final u = variables.mu * variables.mu_o;
          final e = variables.epsilon_r * variables.epsilon_o;
          final m = Complex(re: u, im: 0);
          final E3 = Complex(re: e, im: -1 * sm_om);
          final z3 = m * E3;
          final r3 = sqrt(z3.module);
          final angle3 = z3.argument / 2;

          //jw
          final w = Complex(re: 0, im: variables.omega);
          final R_jw = w.module;
          final angle_jw = w.argument;

          //result
          final R_propagration_constant3 = R_jw * r3;
          final angle_propagration_constant3 = angle_jw + angle3;
          final real_propagration_constant3 = R_propagration_constant3 *
              cos(angle_propagration_constant3);
          final im_propagration_constant3 = R_propagration_constant3 *
              sin(angle_propagration_constant3);

          //display constant with 3 significant
          final mu_display = variables.mu.toStringAsPrecision(4);
          final u_display = u.toStringAsPrecision(4);
          final e_display = e.toStringAsPrecision(4);
          final er_display = variables.epsilon_r.toStringAsPrecision(4);
          final eo_display = variables.epsilon_o.toStringAsPrecision(4);
          final e_R_display = E3.module.toStringAsPrecision(4);
          final e_angle_display = E3.argument.toStringAsPrecision(4);
          final sigma_display = variables.sigma.toStringAsPrecision(4);
          final sm_om_display = sm_om.toStringAsPrecision(4);
          final z3_R_display = z3.module.toStringAsPrecision(4);
          final z3_angle_display = z3.argument.toStringAsPrecision(4);
          final root3_R_display = r3.toStringAsPrecision(4);
          final root3_angle_display = angle3.toStringAsPrecision(4);
          final omega_display = variables.omega.toStringAsPrecision(4);
          final R_jw_display = R_jw.toStringAsPrecision(4);
          final angle_jw_display = angle_jw.toStringAsPrecision(4);
          final R_propagration_constant3_display = R_propagration_constant3
              .toStringAsPrecision(4);
          final angle_propagration_constant3_display = angle_propagration_constant3
              .toStringAsPrecision(4);
          final real_propagration_constant3_display = real_propagration_constant3
              .toStringAsPrecision(4);
          final im_propagration_constant3_display = im_propagration_constant3
              .toStringAsPrecision(4);

          variables.mu_display = mu_display;
          variables.u_display = u_display;
          variables.e_display = e_display ;
          variables.er_display = er_display;
          variables.eo_display = eo_display;
          variables.e_R_display = e_R_display;
          variables.e_angle_display = e_angle_display;
          variables.sigma_display = sigma_display;
          variables.sm_om_display = sm_om_display;
          variables.z3_R_display = z3_R_display;
          variables.z3_angle_display = z3_angle_display;
          variables.root3_R_display = root3_R_display;
          variables.root3_angle_display = root3_angle_display;
          variables.omega_display = omega_display;
          variables.R_jw_display = R_jw_display;
          variables.angle_jw_display = angle_jw_display;
          variables.R_propagration_constant3_display = R_propagration_constant3_display;
          variables.angle_propagration_constant3_display = angle_propagration_constant3_display;
          variables.real_propagration_constant3_display = real_propagration_constant3_display;
          variables.im_propagration_constant3_display = im_propagration_constant3_display;


          variables.ans_1 = real_propagration_constant3_display;
          variables.ans_2 = im_propagration_constant3_display;
          variables.controller1.text = real_propagration_constant3_display;
          variables.controller2.text = im_propagration_constant3_display;
          variables.controller5.text = e_display;
          variables.controller6.text = sm_om_display;

          //calculation
          // sqrt of {mu/eilson-j(sigma/w)}
          variables.omega = double.parse(variables.controller3.text);
          variables.mu = double.parse(variables.controller4.text);
          variables.epsilon_r = double.parse(variables.controller7.text);
          variables.sigma = double.parse(variables.controller8.text);

          //calculation
          // sqrt of {mu/eilson-j(sigma/w)}
          final E = Complex(re: e, im: -1 * sm_om);
          final g_real = u / E.module;
          final g_angle = -1 * E.argument;
          final q_square_real = sqrt(g_real);
          final g_square_angle = g_angle / 2;
          final g_sqaure_re = q_square_real * cos(g_square_angle);
          final g_sqaure_im = q_square_real * sin(g_square_angle);

          //result
          final real_epsilon_display = e.toStringAsPrecision(4);
          final im_epsilon_display = sm_om.toStringAsPrecision(4);
          final root_R_display = E.module.toStringAsPrecision(4);
          final root_angle_display = E.argument.toStringAsPrecision(4);
          final q_real_display = g_real.toStringAsPrecision(4);
          final q_angle_display = g_angle.toStringAsPrecision(4);
          final q_square_real_display = q_square_real.toStringAsPrecision(4);
          final g_square_angle_display = g_square_angle.toStringAsPrecision(4);
          final g_sqaure_re_display = g_sqaure_re.toStringAsPrecision(4);
          final g_sqaure_im_display = g_sqaure_im.toStringAsPrecision(4);

          variables.omega_display = omega_display;
          variables.sigma_display = sigma_display;
          variables.mu_display = mu_display ;
          variables.u_display = u_display;
          variables.er_display = er_display;
          variables.eo_display = eo_display ;
          variables.real_epsilon_display = real_epsilon_display;
          variables.im_epsilon_display = im_epsilon_display;
          variables.root_R_display = root_R_display;
          variables.root_angle_display = root_angle_display;
          variables.q_real_display = q_real_display;
          variables.q_angle_display = q_angle_display;
          variables.q_square_real_display = q_square_real_display;
          variables.g_square_angle_display = g_square_angle_display ;
          variables.g_sqaure_re_display = g_sqaure_re_display;
          variables.g_sqaure_im_display = g_sqaure_im_display;

          variables.ans_3 = g_sqaure_re_display;
          variables.ans_4 = g_sqaure_im_display;
        });
      }

      if(variables.controller7.text.isNotEmpty ) {
        setState(() {
          variables.epsilon_r = double.parse(variables.controller7.text);
          variables.epsilon_o = (1 / (36 * pi)) * pow(10, -9);
          final e = variables.epsilon_r * variables.epsilon_o;
          final e_display = e.toStringAsPrecision(4);
          variables.controller5.text = e_display;
        });
      }

      if(variables.controller3.text.isNotEmpty) {
        setState(() {
          variables.omega = double.parse(variables.controller3.text);

          if (variables.controller8.text.isNotEmpty) {
            variables.sigma = double.parse(variables.controller8.text);
            final sm_om = variables.sigma / variables.omega;
            final sm_om_display = sm_om.toStringAsPrecision(4);
            variables.controller6.text = sm_om_display;
          } else if (variables.controller6.text.isNotEmpty) {
            variables.im_epsilon = double.parse(variables.controller6.text);
            final sigma = variables.im_epsilon * variables.omega;
            final sigma_display = sigma.toStringAsPrecision(4);
            variables.controller8.text = sigma_display;
          }
        });
      }
        else if(variables.controller3.text.isEmpty && variables.controller6.text.isNotEmpty && variables.controller6.text.isNotEmpty ) {
          setState(() {

              variables.sigma = double.parse(variables.controller8.text);
              variables.im_epsilon = double.parse(variables.controller6.text);
              final sm_om = variables.sigma / variables.im_epsilon;
              final sm_om_display = sm_om.toStringAsPrecision(4);
              variables.controller3.text = sm_om_display;

          });
        }

      if(variables.controller5.text.isNotEmpty){
        setState(() {
          variables.real_epsilon = double.parse(variables.controller5.text);
          variables.epsilon_o = (1 / (36 * pi)) * pow(10, -9);
          final epsilon_r = variables.real_epsilon / variables.epsilon_o;
          final epsilon_r_display = epsilon_r.toStringAsPrecision(4);
          variables.controller7.text = epsilon_r_display;
        });
      }
      if(variables.controller7.text.isNotEmpty && variables.controller10.text.isNotEmpty ) {
        setState(() {
          variables.epsilon_r = double.parse(variables.controller7.text);
          variables.epsilon_r_2= double.parse(variables.controller10.text);
          //CA1
          final E1 = variables.epsilon_o*variables.epsilon_r;
          final E2 = variables.epsilon_o*variables.epsilon_r_2;
          final Et = E1/E2;
          final root = sqrt(Et);
          final ca1 = asin(root);
          final ca1_display = ca1.toStringAsPrecision(4);
          variables.ans_5 = ca1_display;
          variables.ans_6 = '0';
        });
      }
      if(variables.controller5.text.isNotEmpty && variables.controller6.text.isNotEmpty &&
          variables.controller11.text.isNotEmpty && variables.controller12.text.isNotEmpty ) {
        setState(() {
          variables.real_epsilon = double.parse(variables.controller5.text);
          variables.im_epsilon = double.parse(variables.controller6.text);
          variables.real_epsilon_2 = double.parse(variables.controller11.text);
          variables.im_epsilon_2 = double.parse(variables.controller12.text);
          final E1_2 = Complex(re: variables.real_epsilon, im: variables.im_epsilon);
          final E2_2 = Complex(re: variables.real_epsilon_2, im: variables.im_epsilon_2);
          final Et = E2_2/E1_2;
          if (Et.im != 0){
            setState(() {
              final r_root = sqrt(Et.module);
              final angle_root = Et.argument/2;
              //arcsin(z) = -i * ln(i*z + sqrt(1 - z^2)); z is a complex number
              //z^2
              final arcsin_r = r_root*r_root;
              final arcsin_angle = angle_root*2;
              final arcsin_12 = arcsin_r*cos(arcsin_angle);
              final arcsin_123 = arcsin_r*sin(arcsin_angle);
              final arcsin_12345 = Complex(re:1-arcsin_12,im:-1*arcsin_123);
              //sqrt(1 - z^2))
              final arcsin_sqrt_real = sqrt(arcsin_12345.module);
              final arcsin_sqrt_im = arcsin_12345.argument/2;
              //i*z
              final arcsin_iz_angle = (pi/2)+angle_root;
              //i*z + sqrt(1 - z^2)
              final arcsin_real_part1=r_root * cos(arcsin_iz_angle);
              final arcsin_im_part1=r_root * sin(arcsin_iz_angle);
              final arcsin_real_part2=arcsin_sqrt_real * cos(arcsin_sqrt_im);
              final arcsin_im_part2=arcsin_sqrt_real * sin(arcsin_sqrt_im);
              final arcsin_real= arcsin_real_part1 + arcsin_real_part2;
              final arcsin_im= arcsin_im_part1 + arcsin_im_part2;
              final arcsin_complex = Complex(re:arcsin_real, im:arcsin_im);
              //ln(i*z + sqrt(1 - z^2))
              final arcsin_rr= arcsin_complex.module;
              final arcsin_iim= arcsin_complex.argument;
              final arcsin_ln_r= log(arcsin_rr);
              final arcsin_ln= Complex(re:arcsin_ln_r, im:arcsin_iim);
              //-i * ln(i*z + sqrt(1 - z^2))
              final ca2_ans= Complex(re: 0,im: -1)*arcsin_ln;
              final ca2_real_display = ca2_ans.re.toStringAsPrecision(4);
              final ca2_im_display = ca2_ans.im.toStringAsPrecision(4);
              variables.ans_5=ca2_real_display;
              variables.ans_6=ca2_im_display;
            });
          }
          if(Et.im==0){
            setState(() {
              final root_2 = sqrt(Et.module);
              final ca2 = asin(root_2);
              final ca2_real_display = ca2.toStringAsPrecision(4);
              variables.ans_5=ca2_real_display;
              variables.ans_6='0';
            });
          }

        });
      }
    }
  }
}


