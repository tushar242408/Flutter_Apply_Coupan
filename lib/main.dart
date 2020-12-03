import 'package:flutter/material.dart';
import 'package:flutter_coupan/Coupan_List.dart';

import 'Coupan_View.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  String Coupan;
  String Data;
  int Discount;
  MyApp({this.Coupan="",this.Data="",this.Discount=0});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static int Discount1=0;
  String TypeCoupan;
  int amount=0;

  int k=0;
  hel(){


    List<Models> a;
    Data b=Data();

    a=b.getdata();

    for(int i=0;i<a.length;i++){
      if(TypeCoupan.toLowerCase()==a[i].Coupname.toLowerCase()){
        setState(() {
          k=1;
          widget.Discount=a[i].Coupandiscount;
        });
      }
    }

  }

  @override
  void initState() {

    setState(() {

    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apply Coupan"),
      ),
      body:Container(
        child:Column(
          children: [

            TextFormField(
              keyboardType: TextInputType.phone,
             initialValue:Discount1!=0? "$Discount1":"",
              decoration: InputDecoration(

                hintText:"Amount",

              ),
              onChanged:((value){
                setState(() {
                  amount = int.parse(value);
                  Discount1=int.parse(value);
                });
              }),

            ),
            TextFormField(
              keyboardType: TextInputType.name,
              initialValue:"${widget.Coupan}",
                decoration: InputDecoration(
                  hintText:"Write Coupan",

                ),

              onChanged:((value){
                TypeCoupan=value;
              }),

            ),
            GestureDetector(child: Text("Select coupans",textAlign: TextAlign.end,style: TextStyle(color:Colors.blueAccent,fontSize:20),),
            onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> View()));}),

         SizedBox(height:30),
            GestureDetector(
                onTap:(){hel();
                if(k==0){
                 setState(() { widget.Discount=0;});
                  AlertDialog dialog=AlertDialog(
                    content: new Text("Wrong Coupan!"),
                  );
                  showDialog(context:context,child:dialog);
                }
                ;
                k=0;},
              child: Container(
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),

                width: MediaQuery.of(context).size.width/3.2,
                height: MediaQuery.of(context).size.height/12,
                child: Text("Applied",textAlign:TextAlign.center,style:TextStyle(fontSize:30)),
              ),
            ),
            SizedBox(height:30),

            Container(

              child: Column(
                children: [
                 Row(children: [ Text("Amount",style:TextStyle(fontSize:18,color:Colors.redAccent)),Text(":${Discount1-(Discount1*widget.Discount/100)}",style:TextStyle(fontSize:18,color:Colors.black87))],)
                ],
              ),
            ),

          ],

        )
      )
    );
  }
}
