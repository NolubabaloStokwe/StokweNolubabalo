import 'package:flutter/material.dart';  
  
  
class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key, required String title});
  
  @override  
  Widget build(BuildContext context) {  
    const appTitle = 'REGISTER';  
    return MaterialApp(  
      title: appTitle,  
      home: Scaffold(  
        appBar: AppBar(  
          title: const Text(appTitle),  
        ),  
        body: const MyCustomForm(),  
      ),  
    );  
  }  
}  
// Create a Form widget.  
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});
  
  @override  
  MyCustomFormState createState() {  
    return MyCustomFormState();  
  }  
}  
// Create a corresponding State class, which holds data related to the form.  
class MyCustomFormState extends State<MyCustomForm> {  
  // Create a global key that uniquely identifies the Form widget  
  // and allows validation of the form.  
  final _formKey = GlobalKey<FormState>();  
  
  @override  
  Widget build(BuildContext context) {  
    // Build a Form widget using the _formKey created above.  
    return Form(  
      key: _formKey,  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: <Widget>[  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: Icon(Icons.person),  
              hintText: 'Enter your full name',  
              labelText: 'Name',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'Please enter some text';  
              }  
              return null;  
            },  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: Icon(Icons.phone),  
              hintText: 'Enter a phone number',  
              labelText: 'Phone',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'Please enter valid phone number';  
              }  
              return null;  
            },  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
            icon: Icon(Icons.calendar_today),  
            hintText: 'Enter your ID number',  
            labelText: 'ID number',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'Please enter valid date';  
              }  
              return null;  
            },  
           ),  
           TextFormField(  
            decoration: const InputDecoration(  
              icon: Icon(Icons.person),  
              hintText: 'Enter UserName',  
              labelText: 'UserName',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'Please enter some text';  
              }  
              return null;  
            },  
          ),
            TextFormField(  
            decoration: const InputDecoration(  
              icon: Icon(Icons.person),  
              hintText: 'passward',  
              labelText: 'passward',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'Please enter some text';  
              }  
              return null;  
            },  
          ),
         Container(  
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),  
              child: ElevatedButton(
                child: const Text('REGISTER'),
                onPressed: ()async  {  
                  // It returns true if the form is valid, otherwise returns false  
                  if (_formKey.currentState!.validate()) {  
                    // If the form is valid, display a Snackbar.  
                    Scaffold.of(context); 
                  }  
                },  
              )),  
        ],  
      ),  
    );  
  }  
}