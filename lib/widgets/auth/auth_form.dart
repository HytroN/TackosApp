import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  AuthForm(
    //Constructor gemmer det i en property
    this.submitFn, // Det argument vi gemmer er forbundet med functionen nedenfor
    this.isLoading,
  );

  final bool isLoading; // Som vi får igennem vores constructor
  final void Function(
    // Er en funktion som ikke return noget, men en funktion at arguments og parameters, som vi gerne vil gemme
    String email,
    String password,
    String username,
    bool isLogin,
    BuildContext
        ctx, // Vi bliver nød til at vidregive context, da vi har adgang til scaffold i authform
  ) submitFn;

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<
      FormState>(); // Et FormState-objekt kan bruges til at gemme, nulstille og validere hver FormField, der er efterkommer af den tilknyttede form.
  bool isPasswordVisible = false; // Sætter vissible to false
  bool _isLogin = true; // tjekker om man er i login mode eller i sign up mode
  String _userEmail = '';
  String _userName = '';
  String _userPassword = '';

  void _trySubmit() {
    // _ definere at det er privat og kun kan bruges i dette dokument
    final isValid = _formKey.currentState
        .validate(); // Dette trigger alle TextFormField, der indeholder en validate function
    FocusScope.of(context)
        .unfocus(); // Det lukker keyboardet når man har submittet.

    if (isValid) {
      // Derefter tjekker om det inputtet er valid
      _formKey.currentState
          .save(); // Det tjekker alle TextFormField og gemmer alle onSaved function. Derefter kan vi bruge det til at sende vores auth en request
      widget.submitFn(
        _userEmail
            .trim(), // trim() Fjerne whitespacing | men vidregivere alt information fra funtionen ovenfor
        _userPassword
            .trim(), // trim() Fjerne whitespacing | men vidregivere alt information fra funtionen ovenfor
        _userName
            .trim(), // trim() Fjerne whitespacing | men vidregivere alt information fra funtionen ovenfor
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
                    mainAxisSize: MainAxisSize
                        .min, // Tager kun den mængde plads som nødvendigt
                    children: <Widget>[
                      if (!_isLogin)
                        Container(
                          child: TextFormField(
                            key: ValueKey(
                                'username'), // Husker det specifikke key element, man har skrevet i.
                            keyboardType: TextInputType
                                .text, // Begrænse brugeren for keyboard type
                            textInputAction: TextInputAction.next,
                            validator: (value) {
                              // Validator er en funktion, som tjekker hvad brugeren indtaster
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
                          key: ValueKey(
                              'email'), // Husker det specifikke key element, man har skrevet i.
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
                          key: ValueKey(
                              'password'), // Husker det specifikke key element, man har skrevet i.
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            // "value" er det brugeren indsætter
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
                      if (widget.isLoading)
                        CircularProgressIndicator(), // Loading indicator
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
                              // Ved at ændre om man er i sign up mode eller i login mode, bliver vi nød til at lave en setState som ændre i udseendet, når man klikker.
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
