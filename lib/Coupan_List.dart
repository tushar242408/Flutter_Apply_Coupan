class Models{
 final String Coupname,Copdata,Coupdate;
 final int Coupandiscount;
  Models({this.Coupname,this.Copdata,this.Coupdate,this.Coupandiscount});
}
class Data{
  List<Models> c=List<Models>();


getdata(){
  Models a=Models(
      Coupname: "Diwali",Copdata: "A best Diwali Coupan where you get 100rs off on each object",
      Coupdate: "2020-12-20",
      Coupandiscount:8);
  c.add(a);

 a=Models(
      Coupname: "Holi",Copdata: "A best Holi Coupan where you get 200rs off on each object",
      Coupdate: "2020-12-30",
      Coupandiscount:7);
 c.add(a);
  a=Models(
      Coupname: "New Year",Copdata: "A best New Year Coupan where you get 800rs off on each object",
      Coupdate: "2021-01-30",
      Coupandiscount:14);
  c.add(a);
  a=Models(
      Coupname: "Cristmas",Copdata: "A best Jingle Bell Coupan where you get 200rs off on each object",
      Coupdate: "2020-12-30",
      Coupandiscount:10);
  c.add(a);
  a=Models(
      Coupname: "Independence day",Copdata: "A best Holi Coupan where you get 200rs off on each object",
      Coupdate: "2020-12-30",
      Coupandiscount:15);
  c.add(a);
  a=Models(
      Coupname: "Mid Season",Copdata: "A best New Year Coupan where you get 800rs off on each object",
      Coupdate: "2021-01-30",
      Coupandiscount:13);
  c.add(a);
  a=Models(
      Coupname: "Comp",Copdata: "A best Jingle Bell Coupan where you get 200rs off on each object",
      Coupdate: "2020-12-30",
      Coupandiscount:20);
  c.add(a);


  return c;

}



}


