import 'package:flutter/material.dart';
import './login.dart';
void main() => runApp(SignUp());

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage()
        
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _password;
  String _email;




// defines the bottom navigation bar;

final makeBottom = Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.camera_alt, color: Colors.white,),
              onPressed: () {
                
              },
            ),
            IconButton(
              icon: Icon(Icons.location_on, color: Colors.white),
              onPressed: () {

         

              },
            ),
            IconButton(
              icon: Icon(Icons.message, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(

              icon: Icon(Icons.account_circle, color: Colors.white),
              onPressed: () {
               
              },

            )
          ],
        ),
      ),
    );


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      resizeToAvoidBottomPadding: false,
      bottomNavigationBar: makeBottom,
     
      body: ListView(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    top: 70.0,
                    left: 15.0,
                  ),
                  child: Text('Sign Up',
                      style: TextStyle(color: Colors.white,
                          fontSize: 80.0, fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 50.0,
                    left: 250.0,
                  ),
                 
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 15.0,right: 15.0),
            child: Column(
              children: <Widget>[
                
                TextFormField(
                  autofocus: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold, 
                        color: Colors.white
                        ),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green))
                  ),
                  validator:(value)=>value.isEmpty ? "Email can\ 't be empty":null,
                  onSaved: (value)=>_email=value,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  maxLength: 10,
                  obscureText: true,
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold, 
                        color: Colors.white
                        ),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green))
                  ),
                 validator:(value)=> value.isEmpty ? "Password can\'t be empty":null,
                  onSaved: (value)=>_password=value,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'FIRST NAME',
                      labelStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green))
                    ),
                    
                  ),
                  
                  
                
                ),
                SizedBox(
                  height: 10.0,),
                Container(
                  child: TextField(
                    
                    decoration: InputDecoration(
                      labelText: 'SURNAME',
                      labelStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.green,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: (){
                        //   //    FirebaseAuth.instance.createUserWithEmailAndPassword(
                        //   // email: _email, password: _password
                        // ).then((signedInUser){
                        //   UserManagement().storeNewUser(signedInUser,context);
                        // }).catchError((e){
                        //   print(e);
                        // });
                     
                      },
                      child: Center(
                        child: Text(
                          'Sign Up',
                        style:TextStyle(
                          color:Colors.white ,
                          fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstRoute()));
                },
                  child: Container(
                    height: 40.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Row (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                         Center(
                           child: Text('BACK',
                           style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold)),
                         )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}
