import 'package:extended_math/extended_math.dart';
import 'package:flutter/cupertino.dart';

class Variables {
  double alpha = 0;
  double beta = 0;
  double omega = 0;
  double mu = 0;
  double mu_o = (4 * pi) * pow(10, -7);
  double real_epsilon = 0;
  double im_epsilon = 0;
  double epsilon = 0;
  double epsilon_r = 0;
  double epsilon_o = (1 / (36 * pi)) * pow(10, -9);
  double sigma = 0;

  double epsilon_r_2=0;
  double real_epsilon_2 = 0;
  double im_epsilon_2 = 0;
  Complex infoText = Complex(re: 0, im: 0);
  Complex x = Complex(re: 0, im: 0);


  var ans_1 = '0';
  var ans_2 = '0';
  var ans_3 = '0';
  var ans_4 = '0';
  var ans_5 = '0';
  var ans_6 = '0';

  //complex propagation constant 1
  var a = '0';
  var b = '0';

  //complex propagation constant 2
  var mu_display = '0';
  var u_display = '0';
  var real_epsilon_display = '0';
  var im_epsilon_display = '0';
  var neg_im_epsilon_display = '0';
  var root_R_display = '0';
  var root_angle_display = '0';
  var root_real_display = '0';
  var root_im_display = '0';
  var polar_R_display = '0';
  var omega_display = '0';
  var R_jw_display = '0';
  var angle_jw_display = '0';
  var R_propagration_constant1_display = '0';
  var angle_propagration_constant1_display = '0';
  var real_propagration_constant1_display = '0';
  var im_propagration_constant1_display = '0';

  //complex propagation constant 3
  var e_display = '0' ;
  var er_display = '0';
  var eo_display = '0';
  var e_R_display = '0';
  var e_angle_display = '0';
  var sigma_display = '0';
  var sm_om_display = '0';
  var z3_R_display = '0';
  var z3_angle_display = '0';
  var root3_R_display = '0';
  var root3_angle_display = '0';
  var R_propagration_constant3_display = '0';
  var angle_propagration_constant3_display = '0';
  var real_propagration_constant3_display = '0';
  var im_propagration_constant3_display = '0';

  //complex intrinsic impedance 1 & 2
  var q_real_display = '0';
  var q_angle_display = '0';
  var q_square_real_display = '0';
  var g_square_angle_display = '0';
  var g_sqaure_re_display = '0';
  var g_sqaure_im_display = '0';
  var epsilon_r_display = '0';

  var real_epsilon_display3 = '0';
  var im_epsilon_display3 = '0';
  var root_R_display3 = '0';
  var root_angle_display3 = '0';
  var q_real_display3 = '0';
  var q_angle_display3 = '0';
  var q_square_real_display3 = '0';
  var g_square_angle_display3 = '0';
  var g_sqaure_re_display3 = '0';
  var g_sqaure_im_display3 = '0';

  //CA1
  var er2_display = '0';
  var E1_display = '0';
  var E2_display = '0';
  var Et_display = '0';
  var root_display = '0';
  var ca1_display = '0';

  //CA2
  var real_epsilon_display_2= '0';
  var im_epsilon_display_2= '0';
  var r_epsilon_disply = '0';
  var angle_epsilon_display = '0';
  var r_epsilon_disply_2 = '0';
  var angle_epsilon_display_2 = '0';
  var Et_real_display= '0';
  var Et_im_display= '0';
  var Et_r_diplay= '0';
  var Et_angle_display= '0';
  var r_root_display= '0';
  var angle_root_display= '0';
  var arcsin_r_display= '0';
  var arcsin_angle_display= '0';
  var arcsin_12_display = '0';
  var arcsin_123_display  = '0';
  var arcsin_1234_display = '0';
  var arcsin_12345_display = '0';
  var arcsin_sqrt_real_display= '0';
  var arcsin_sqrt_im_display= '0';
  var arcsin_iz_angle_display= '0';
  var arcsin_real_part1_display= '0';
  var arcsin_im_part1_display= '0';
  var arcsin_real_part2_display= '0';
  var arcsin_im_part2_display= '0';
  var arcsin_real_display= '0';
  var arcsin_im_display= '0';
  var arcsin_rr_display= '0';
  var arcsin_iim_display= '0';
  var arcsin_ln_re_display= '0';
  var arcsin_ln_im_display= '0';
  var ca2_real_display= '0';
  var ca2_im_display= '0';
  var root_2_display= '0';

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();
  TextEditingController controller7 = TextEditingController();
  TextEditingController controller8 = TextEditingController();
  TextEditingController controller9 = TextEditingController();
  TextEditingController controller10 = TextEditingController();
  TextEditingController controller11 = TextEditingController();
  TextEditingController controller12 = TextEditingController();
  static final Variables _singleton = Variables._internal();

  factory Variables() {
    return _singleton;
  }

  Variables._internal();
}