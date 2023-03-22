// Librarys
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
// Widgets
import 'package:flutter_calculadora_getx_app/widgets/line_separator.dart';
import 'package:flutter_calculadora_getx_app/widgets/main_result.dart';
import 'package:flutter_calculadora_getx_app/widgets/sub_result.dart';
// Controllers
import 'package:flutter_calculadora_getx_app/controllers/calculator_controller.dart';

class MathResult extends StatelessWidget {
  MathResult({super.key});

  final calculatorCtrl = Get.find<CalculatorController>();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            SubResult(text: '${calculatorCtrl.firstNumber}'),
            SubResult(text: '${calculatorCtrl.operation}'),
            SubResult(text: '${calculatorCtrl.secondNumber}'),
            const LineSeparator(),
            MainResultText(text: '${calculatorCtrl.mathResult}'),
          ],
        ));
  }
}
