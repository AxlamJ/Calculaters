import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  State createState() => _Statehome();
}

class _Statehome extends State<HomePage> {
 var num1 = 0.0, num2 = 0.0, sum =0.0;

 final TextEditingController t1 = new TextEditingController();
 final TextEditingController t2 =  new TextEditingController();


void doAddation(){
  setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1+num2;

    });
}

void doSubstrtion(){
  setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1-num2;
    });
}
void doMaltply(){
  setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1*num2;
    });
}
void dodivision(){
  setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1/num2;
    });
}

void Clear()
{
  setState(() {
      t1.text = "";
      t2.text = "";
    });
}


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculater"),
      ),
      body: new Container(
       padding: EdgeInsets.all(40.0),

       child: SingleChildScrollView(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
          new Text("Result: $sum",
          style: new TextStyle(
            fontSize: 20.0,
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
          ), 

            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter Number 1",
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter Number 2",
              ),
              controller: t2,
            ),
           new Padding(
              padding: const EdgeInsets.only(top: 20.0),
              ),
              new Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                new MaterialButton(
                  color: Colors.greenAccent,
                  child: new Text("+"),
                  onPressed: doAddation,
                  ),
                  new Padding(padding: const EdgeInsets.only(right: 20.0),),
               new MaterialButton(
                  color: Colors.greenAccent,
                  child: new Text("-"),
                  onPressed: doSubstrtion,
                  ),
               
                ],
              ),
              Padding(padding: const EdgeInsets.only(top: 20.0),),
               new Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
               new MaterialButton(
                  color: Colors.greenAccent,
                  child: new Text("*"),
                  onPressed: doMaltply,
                  ),
                    new Padding(padding: const EdgeInsets.only(right: 20.0),),
               new MaterialButton(
                  color: Colors.greenAccent,
                  child: new Text("/"),
                  onPressed: dodivision,
                  ),
               
                ],
              ),
               new Padding(padding: const EdgeInsets.only(top: 20.0),),
               new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new MaterialButton(
                        color: Colors.greenAccent,
                        child: Text("Clear"),
                        onPressed: Clear,
                        )

                    ],

               ) 

           ],
           ),
       ),
      ),
      
    );
  }
}