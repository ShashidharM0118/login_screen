import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Login Page',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
      bool setView =false;

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
         child: Container(
              width :300,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               TextField(
                 keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  labelText: "Name",
                  focusedBorder: OutlineInputBorder(
                    borderSide:BorderSide(
                        color: Colors.green,
                      width: 2
                     ),
                     borderRadius:BorderRadius.circular(11),
                  ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:BorderSide(
                          color: Colors.black45,
                          width: 2
                      ),
                      borderRadius:BorderRadius.circular(11),
                    )
                ),

               ),
               Container(
                 height: 30,

               ),
               TextField(
                 autofillHints: ["@gmail.com"],
                 keyboardType: TextInputType.emailAddress,
                 decoration: InputDecoration(
                   labelText:"email",
                     hintText: "Enter your email",
                     focusedBorder: OutlineInputBorder(
                       borderSide:BorderSide(
                           color: Colors.green,
                           width: 2
                       ),
                       borderRadius:BorderRadius.circular(11),
                     ),
                   enabledBorder: OutlineInputBorder(
                     borderSide:BorderSide(
                         color: Colors.black45,
                         width: 2
                     ),
                     borderRadius:BorderRadius.circular(11),
                   )
                 ),
               ),
               Container(
                 height: 30,
               ),
               TextField(
                 keyboardType: TextInputType.number,
                 obscureText: setView,
                 obscuringCharacter: "*",
                 decoration: InputDecoration(
                   labelText: "password",
                     hintText: "Enter your password",
                     focusedBorder: OutlineInputBorder(
                       borderSide:BorderSide(
                           color: Colors.green,
                           width: 2
                       ),
                       borderRadius:BorderRadius.circular(11),
                     ),
                     enabledBorder: OutlineInputBorder(
                       borderSide:BorderSide(
                           color: Colors.black45,
                           width: 2
                       ),
                       borderRadius:BorderRadius.circular(11),
                     ),
                   suffixIcon: IconButton(
                     icon: Icon(Icons.remove_red_eye),
                     onPressed:(){
                       setView=setView?false:true;

                     } ,
                   ),

                 ),

               ),
               Container(
                 height: 50,
               ),
               OutlinedButton(onPressed: () {
                 // Show a snackbar
                 SnackBar snackBar = SnackBar(
                   content: Text('login successfull but nothing to show'),
                   action: SnackBarAction(
                     label: 'Close',
                     onPressed: () {
                       // Do something
                     },
                   ),
                 );
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);

               },
                 child:Text("submit",style: TextStyle(fontSize: 20),),),
             ],
           ),
         ),
      ),
    );
  }
}
