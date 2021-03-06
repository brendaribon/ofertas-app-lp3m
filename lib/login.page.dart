import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: larguraTela > 500 ? 400 : larguraTela,
            margin: EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    // width: double.infinity,
                    // height: 200,
                    child: Image.network(
                      "https://via.placeholder.com/240x200.png?text=Logo",
                      // fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 50),
                  TextFormField(
                    validator: (value) =>
                        value.isEmpty ? "Campo obrigatório" : null,
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      border: OutlineInputBorder(),
                      // labelStyle: TextStyle(color: Colors.red),
                    ),
                    // style: TextStyle(color: Colors.green),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    validator: (value) =>
                        value.isEmpty ? "Campo obrigatório" : null,
                    decoration: InputDecoration(
                      labelText: "Senha",
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate())
                          Navigator.of(context).pushNamed('/home');
                      },
                      child: Text(
                        "Entrar",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Não tem cadastro?"),
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/registro');
                        },
                        child: Text(
                          "Clique aqui.",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
