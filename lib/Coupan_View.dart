import 'package:flutter/material.dart';

import 'Coupan_List.dart';
import 'main.dart';

class View extends StatefulWidget {
  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  List<Models> a;
  @override
  void initState() {
    Data b=Data();
    a=b.getdata();
    print(a[1].Coupname);

    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Coupans"),
      ),
      body:ListView.builder(
          itemCount: a.length,
          itemBuilder: (context,index){
            return SingleChildScrollView(

              child: Column(
                children: [
                  GestureDetector(
                    onTap: () async{
                      MyApp c=MyApp();


                      Navigator.push(context, MaterialPageRoute(builder: (context)=> MyApp(Coupan: a[index].Coupname,Discount:a[index].Coupandiscount ,)));
                      print(a[index].Coupandiscount);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                    color:Colors.grey,
                      child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("CoupanName:${a[index].Coupname}",style:TextStyle(
                                fontSize: 28,
                              )),
                              Text("Dicount:${a[index].Coupandiscount}%",style:TextStyle(
                                fontSize: 28,
                              )),
                              Text("Validtill:${a[index].Coupdate}",style:TextStyle(
                                fontSize: 28,
                              ))
                            ],
                          ),
                    ),
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            );




          }),
    );
  }
}



