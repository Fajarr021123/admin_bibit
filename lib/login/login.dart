import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // Untuk jsonEncode

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color hijau = Color(0xFF859F3D);
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isObscurePassword = true;

  Future<void> _login() async {
    if (_formKey.currentState!.validate()) {
      // Mengambil input dari TextEditingController
      String email = emailController.text;
      String password = passwordController.text;

      // Mengirim permintaan POST ke API
      final response = await http.post(
        Uri.parse(
            'https://acc6-2401-1700-18-dd0-7016-3f12-9bec-188a.ngrok-free.app/admin/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': email,
          'password': password,
        }),
      );

      // Memeriksa status respons
      if (response.statusCode == 200) {
        // Jika server mengembalikan respons OK, navigasi ke Home
        Navigator.pushNamed(context, '/home');
      } else {
        // Jika server mengembalikan respons dengan kesalahan
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login gagal, silakan coba lagi.')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: hijau,
        title: Text('Login'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/tani_bk.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.darken), //Blur
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 58,
                  backgroundImage: AssetImage('asset/tani.png'),
                ),
                const SizedBox(height: 13.0),
                const Text(
                  "Login To Taniku",
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: hijau,
                  decoration: InputDecoration(
                    labelText: "Masukan email",
                    floatingLabelStyle: const TextStyle(
                      color: hijau,
                      fontWeight: FontWeight.bold,
                    ),
                    hintText: "Silahkan isi email kamu !",
                    hintStyle: TextStyle(
                      color: whiteColor,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.grey[400]!,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        width: 1.0,
                        color: hijau,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    color: whiteColor,
                  ),
                  validator: (emailValue) {
                    if (emailValue?.isEmpty ?? true) {
                      return "Email tidak boleh kosong !";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  controller: passwordController,
                  obscureText: isObscurePassword,
                  cursorColor: hijau,
                  decoration: InputDecoration(
                    labelText: "Masukan Password",
                    floatingLabelStyle: const TextStyle(
                      color: hijau,
                      fontWeight: FontWeight.bold,
                    ),
                    hintText: "Silahkan isi password kamu !",
                    hintStyle: TextStyle(
                      color: whiteColor,
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          isObscurePassword = !isObscurePassword;
                        });
                      },
                      child: Icon(isObscurePassword
                          ? Icons.lock
                          : Icons.lock_open_rounded),
                    ),
                    suffixIconColor: hijau,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.grey[400]!,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        width: 1.0,
                        color: hijau,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    color: whiteColor,
                  ),
                  validator: (passwordValue) {
                    if (passwordValue?.isEmpty ?? true) {
                      return "Password tidak boleh kosong !";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _login, // Memanggil fungsi _login
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
