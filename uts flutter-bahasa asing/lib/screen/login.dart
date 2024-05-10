import 'package:flutter/material.dart';
import 'package:uts/screen/startpage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.account_box),
          onPressed: () {
            // Add your code here to handle the icon button press
          },
        ),
      ),
      body: Center(
        child: LoginForm(),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'),
      ),
      body: Center(
        child: RegisterForm(),
      ),
    );
  }
}

class FormWidget extends StatefulWidget {
  final String title;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final String submitButtonText;

  FormWidget({
    required this.title,
    required this.usernameController,
    required this.passwordController,
    required this.submitButtonText,
  });

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: widget.usernameController,
            decoration: InputDecoration(
              labelText: widget.title == 'Login'? 'Username' : 'Buat Username',
              prefixIcon: Icon(Icons.email),
            ),
          ),
          TextField(
            controller: widget.passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: widget.title == 'Login'? 'Password' : 'Buat Password',
              prefixIcon: Icon(Icons.lock),
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              final username = widget.usernameController.text;
              final password = widget.passwordController.text;
              print('${widget.title}: $username, $password');
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const HomeScreen()),
              );
            },
            child: Text(widget.submitButtonText),
          ),
          SizedBox(height: 10.0),
          TextButton(
            onPressed: () {
              if (widget.title == 'Login') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              } else {
                Navigator.pop(context);
              }
            },
            child: Text(
              widget.title == 'Login'
                 ? 'Belum punya akun? Daftar di sini'
                  : 'Sudah punya akun? Login di sini',
            ),
          ),
        ],
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    return FormWidget(
      title: 'Login',
      usernameController: usernameController,
      passwordController: passwordController,
      submitButtonText: 'Login',
    );
  }
}

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    return FormWidget(
      title: 'Register',
      usernameController: usernameController,
      passwordController: passwordController,
      submitButtonText: 'Daftar',
    );
  }
}
