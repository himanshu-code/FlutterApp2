import "package:flutter/material.dart";

MyApp(){
  var textStyle=TextStyle(color: Colors.grey,fontSize: 24, fontWeight: FontWeight.bold );
  var email=Icon(Icons.email,color: Colors.purple,);
  var camico=Icon(Icons.camera,color: Colors.purple,);
  var myImage=NetworkImage("https://media.ford.com/content/fordmedia/feu/en/news/2018/10/18/ford-gt-production-extended-to-satisfy-exceptional-demand/_jcr_content/image.img.881.495.jpg/1539872609997.jpg");
var mylogo=Image.network("https://cdn.pixabay.com/photo/2015/07/20/00/57/vintage-car-852239_960_720.jpg");
var MyEmailButton=IconButton(icon:email,onPressed:null);
var MyCamButton=IconButton(icon:camico,onPressed:null);

  var mybody=Container(height:300,
              width:300,
              alignment:Alignment.bottomCenter,
              child: Text("FORD GT",style: textStyle,),
              decoration: BoxDecoration(color:Colors.purple,borderRadius: BorderRadius.circular(10), border: Border.all(width:5,color: Colors.black),image: DecorationImage(fit: BoxFit.fill,image:myImage )),
              );
var myHome=Scaffold(appBar: AppBar(title: Text("Vroom!!!"),
                    backgroundColor:Colors.black ,
                    leading: mylogo,
                    actions: <Widget>[MyEmailButton,MyCamButton],
                  ),
                body:Center(child: mybody),
                backgroundColor: Colors.purple,
                );
var design=MaterialApp(home:myHome,debugShowCheckedModeBanner:false ,);
return design;
}