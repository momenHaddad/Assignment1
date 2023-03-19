import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[400],
        title: Center(
          child: Text(
            'Welcom to Home Page',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Icon(
                Icons.account_circle,
                size: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  )),
                  Text(
                    'Select The Page You Want',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  )),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              new SizedBox(
                width: 180.0,
                height: 55.0,
                child: ElevatedButton(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.grey[850], fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => loginpage()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.tealAccent[400],
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              new SizedBox(
                width: 180.0,
                height: 55.0,
                child: ElevatedButton(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.grey[850], fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.tealAccent[400],
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              new SizedBox(
                width: 180.0,
                height: 55.0,
                child: ElevatedButton(
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.grey[850], fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => forgot()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.tealAccent[400],
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              new SizedBox(
                width: 180.0,
                height: 55.0,
                child: ElevatedButton(
                    child: Text(
                      'Successful Registered',
                      style: TextStyle(
                        color: Colors.grey[850],
                        fontSize: 14,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.tealAccent[400],
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              new SizedBox(
                width: 180.0,
                height: 55.0,
                child: ElevatedButton(
                    child: Text(
                      'Confirmation',
                      style: TextStyle(color: Colors.grey[850], fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => confirm()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.tealAccent[400],
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              new SizedBox(
                width: 180.0,
                height: 55.0,
                child: ElevatedButton(
                    child: Text(
                      'Change Password',
                      style: TextStyle(color: Colors.grey[850], fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => change()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.tealAccent[400],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class loginpage extends StatefulWidget {
  loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final userContorller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[400],
        title: Center(
          child: Text(
            'Login         ',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Icon(
                Icons.login,
                size: 100,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  )),
                  Text(
                    'Enter you Information',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent),
                    ),
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    hintText: 'Username',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.tealAccent),
                      ),
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      hintText: 'Password'),
                  obscureText: true,
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => forgot()));
                    },
                    child: Text(
                      'Forgot password?     ',
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.end,
              ),
              new SizedBox(
                width: 250.0,
                height: 55.0,
                child: ElevatedButton(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.grey[850], fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.tealAccent[400],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  )),
                  Text(
                    'Or go with',
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  )),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              new SizedBox(
                width: 180.0,
                height: 55.0,
                child: ElevatedButton(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.grey[850], fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.tealAccent[400],
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              new SizedBox(
                width: 180.0,
                height: 55.0,
                child: ElevatedButton(
                    child: Text(
                      'Change Passwrod',
                      style: TextStyle(color: Colors.grey[850], fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => change()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.tealAccent[400],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Sign Up        ',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.tealAccent[400],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Icon(
              Icons.person_add_alt_1_outlined,
              size: 100,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                )),
                Text(
                  'Enter you Information',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.tealAccent),
                  ),
                  fillColor: Colors.grey.shade300,
                  filled: true,
                  hintText: 'E-mail',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.tealAccent),
                  ),
                  fillColor: Colors.grey.shade300,
                  filled: true,
                  hintText: 'Username',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent),
                    ),
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    hintText: 'Password'),
                obscureText: true,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            new SizedBox(
              width: 250.0,
              height: 55.0,
              child: ElevatedButton(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.grey[850], fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.tealAccent[400],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Success!        ',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.tealAccent[400],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Icon(
                Icons.how_to_reg_outlined,
                size: 100,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  )),
                  Text(
                    'Congrats!',
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  )),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'You have been registered successfully!',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class forgot extends StatelessWidget {
  const forgot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Forgot Password        ',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.tealAccent[400],
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Icon(
            Icons.no_encryption_gmailerrorred_outlined,
            size: 100,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                  child: Divider(
                thickness: 0.5,
                color: Colors.grey,
              )),
              Text(
                'Enter your e-mail to cover you account',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Expanded(
                  child: Divider(
                thickness: 0.5,
                color: Colors.grey,
              )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.tealAccent),
                ),
                fillColor: Colors.grey.shade300,
                filled: true,
                hintText: 'E-mail',
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          new SizedBox(
            width: 250.0,
            height: 55.0,
            child: ElevatedButton(
                child: Text(
                  'Send Code',
                  style: TextStyle(color: Colors.grey[850], fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.tealAccent[400],
                )),
          ),
        ],
      )),
    );
  }
}

class change extends StatelessWidget {
  const change({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Change Password        ',
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor: Colors.tealAccent[400],
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Icon(
                Icons.change_circle_outlined,
                size: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  )),
                  Text(
                    'Enter your e-mail to cover you account',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent),
                    ),
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    hintText: 'Your current password',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent),
                    ),
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    hintText: 'New password',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent),
                    ),
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    hintText: 'confirm password',
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  )),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              new SizedBox(
                width: 250.0,
                height: 55.0,
                child: ElevatedButton(
                    child: Text(
                      'change now',
                      style: TextStyle(color: Colors.grey[850], fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => confirm()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.tealAccent[400],
                    )),
              ),
            ],
          ),
        ));
  }
}

class confirm extends StatelessWidget {
  const confirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Confirmation        ',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.tealAccent[400],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Icon(
              Icons.question_mark_outlined,
              size: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                )),
                Text(
                  'Enter the confirmation code',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.tealAccent),
                  ),
                  fillColor: Colors.grey.shade300,
                  filled: true,
                  hintText: 'Enter Code',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            new SizedBox(
              width: 250.0,
              height: 55.0,
              child: ElevatedButton(
                  child: Text(
                    'Confirm',
                    style: TextStyle(color: Colors.grey[850], fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.tealAccent[400],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class valid extends StatefulWidget {
  const valid({super.key});

  @override
  State<valid> createState() => _validState();
}

class _validState extends State<valid> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
