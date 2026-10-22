
import 'package:flutter/material.dart';
import 'package:tajminchy29964g/widgets/input_field.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  double result = 0;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 239, 234),

      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 19, 49, 59),
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: SizedBox(
          width: 330,
          child: Card(
            color: Colors.white,
            elevation: 10,
            shadowColor: const Color.fromARGB(255, 58, 127, 143),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),

            child: Padding(
              padding: const EdgeInsets.all(20),

              child: Form(
                key: _formKey,

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Calculate Your Numbers",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 36, 122, 134),
                      ),
                    ),

                    SizedBox(height: 25),

                    InputField(
                      controller: controller1,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      labelText: "Number 1",
                      hintText: "Enter first number",
                      prefixIcon: Icon(Icons.numbers),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Field is empty!";
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 20),

                    InputField(
                      controller: controller2,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      labelText: "Number 2",
                      hintText: "Enter second number",
                      prefixIcon: Icon(Icons.numbers),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Field is empty!";
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 25),

                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            String num1 = controller1.text;
                            String num2 = controller2.text;

                            result = double.parse(num1) +
                                double.parse(num2);

                            setState(() {});
                          }
                        },

                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 26, 85, 81),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),

                        child: Text("Calculate"),
                      ),
                    ),

                    SizedBox(height: 25),

                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFF044A5),
                            Color(0xFF9B5DE5),
                            Color(0xFF399BFF),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),

                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 16,
                              ),

                              SizedBox(width: 6),

                              Text(
                                "YOUR ANSWER",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 8),

                          Text(
                            "$result",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
