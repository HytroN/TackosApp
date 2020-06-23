// import 'package:TackosApp/widgets/auth/show_logo.dart';
import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  AuthForm(
    this.submitFn,
    this.isLoading,
  );

  final bool isLoading;
  final void Function(
    String email,
    String password,
    String username,
    bool isLogin,
    BuildContext ctx,
  ) submitFn;

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  var _isLogin = true;
  var _userEmail = '';
  var _userName = '';
  var _userPassword = '';

  void _trySubmit() {
    final isValid = _formKey.currentState.validate();
    FocusScope.of(context).unfocus();

    if (isValid) {
      _formKey.currentState.save();
      widget.submitFn(
        _userEmail.trim(),
        _userPassword.trim(),
        _userName.trim(),
        _isLogin,
        context,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Image.asset('images/image1s.png'),
            ),
            Expanded(
              child: Container(),
            ),
            Image.asset(
              'images/image2.png',
            ),
          ],
        ),
        Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            margin: EdgeInsets.all(20),
            elevation: 10,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      if (!_isLogin)
                        Container(
                          child: TextFormField(
                            key: ValueKey('username'),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            validator: (value) {
                              if (value.isEmpty || value.length < 4) {
                                return 'Dit brugernavn skal mindst indeholde 4 tegn';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Brugernavn',
                              //prefixIcon: Icon(Icons.email),
                              prefixIcon: Icon(Icons.perm_identity),
                              border: OutlineInputBorder(),
                            ),
                            onSaved: (value) {
                              _userName = value; // Gemmer brugernavnet
                            },
                          ),
                        ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        child: TextFormField(
                          key: ValueKey('email'),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value.isEmpty || !value.contains('@')) {
                              // Tjekker om det er en email ved at tjekke @ eller om feltet er tomt
                              return 'Indtast en gyldig email';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Email',
                            //prefixIcon: Icon(Icons.email),
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                          ),
                          onSaved: (value) {
                            _userEmail = value; // Gemmer emailen
                          },
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        child: TextFormField(
                          key: ValueKey('password'),
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value.isEmpty || value.length < 8) {
                              return 'Adgangskoden skal mindst være 8 tegn';
                            }
                            return null;
                          },
                          obscureText: !isPasswordVisible,
                          decoration: InputDecoration(
                            labelText: 'Adgangskode',
                            suffixIcon: IconButton(
                              icon: Icon(isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  isPasswordVisible = !isPasswordVisible;
                                });
                              },
                            ),
                            prefixIcon: Icon(Icons.vpn_key),
                            border: OutlineInputBorder(),
                          ),
                          onSaved: (value) {
                            _userPassword = value; // Gemmer Password
                          },
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      if (widget.isLoading) CircularProgressIndicator(),
                      if (!widget.isLoading)
                        Container(
                          margin: EdgeInsets.only(top: 32.0),
                          width: 260.0,
                          child: RaisedButton(
                            color: Colors.orange,
                            textColor: Colors.white,
                            elevation: 5.0,
                            padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                            child: Text(
                              _isLogin ? 'Log Ind' : 'Opret bruger',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            onPressed: _trySubmit,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      if (!widget.isLoading)
                        FlatButton(
                          textColor: Colors.grey,
                          child: Text(
                            _isLogin
                                ? 'Opret en konto'
                                : 'Jeg ejer allerede en konto',
                          ),
                          onPressed: () {
                            setState(() {
                              _isLogin = !_isLogin;
                            });
                          },
                        )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
