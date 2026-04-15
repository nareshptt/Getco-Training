import 'package:flutter/material.dart';
import 'package:getco_traing/Widgets/Snackbar.dart';

class InputForm extends StatefulWidget {
  const InputForm({super.key});

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String message = "";
  bool isPasswordHidden = true;

  void validate() {
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();

    if (username.isEmpty) {
      setState(() => message = "❌ Enter username");
      return;
    }

    if (password.isEmpty) {
      setState(() => message = "❌ Enter password");
      return;
    }

    if (password.length < 6) {
      setState(() => message = "❌ Password must be at least 6 characters");
      return;
    }
    setState(() {
      showMySnackBar(context);
      message = "✅ Login Successful for $username";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.person_outline_sharp,
                        size: 60,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Welcome",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          labelText: "Username",
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        controller: passwordController,
                        obscureText: isPasswordHidden,
                        decoration: InputDecoration(
                          labelText: "Password",
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(
                              isPasswordHidden
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                isPasswordHidden = !isPasswordHidden;
                              });
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: validate,
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text("Login"),
                        ),
                      ),
                      SizedBox(height: 15),

                      Text(
                        message,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: message.contains("✅")
                              ? Colors.green
                              : Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
