import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[_getCard(), _getAvatar()],
        ),
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100, height: 100,
      decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          border: Border.all(color: Colors.redAccent, width: 1.2),
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/100"),
              fit: BoxFit.cover)),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
          color: Colors.pinkAccent, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("John Alexis Munera", style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
          SizedBox(height: 10,),
          Text("alexismunera98@gmail.com"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Icon(Icons.person_pin), Text("alexismunera98")],
          )
        ],
      ),
    );
  }
}

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
          centerTitle: true,
          backgroundColor: Colors.black12,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.add,
              ),
              onPressed: () => debugPrint("Something will be added"),
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => debugPrint("Deleted pressed!"),
            )
          ],
        ),
        backgroundColor: Colors.green.shade100,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[CustomButton("Button", "Snackbar")],
          ),
        ));
  }
}

class CustomButton extends StatelessWidget {
  String buttonText;
  String snackText;

  CustomButton(this.buttonText, this.snackText);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text(snackText),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.green),
        child: Text(
          buttonText,
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blueGrey,
        child: Center(
          child: Text(
            "Hello World",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
                fontSize: 25),
          ),
        ));
  }
}
