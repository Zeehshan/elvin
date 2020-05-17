import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_elevinp/models/especialidad_modelo.dart';
import 'detailDoctor.dart';
//import '../DeliveryScreen.dart';

class DoctorScreen extends StatefulWidget {
  final List<Doctor> doctor;
  final String title;
  final String parentId;
  DoctorScreen({this.doctor, Especialidad especialidad,this.title,this.parentId});

  @override
  _DoctorScreenState createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  @override
  Widget build(BuildContext context) {
    print(widget.parentId);
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          //`true` if you want Flutter to automatically add Back Button when needed,
          //or `false` if you want to force your own back button every where
          title: Text(widget.title),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          )),
      backgroundColor: Colors.blue[300],
      body: StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection("doctors_list").snapshots(),
          builder: (context, snapshot){
          if(snapshot.hasError){}else if(snapshot.hasData){

          }
            if (snapshot.hasError)
              return Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white),));
            switch (snapshot.connectionState){
              case ConnectionState.waiting: return Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white),));
              default:
                return SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: List.generate(snapshot.data.documents.length, ((index){
                         return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailDoctor(
                        doctor: snapshot.data.documents,index: index,),
                    ),
                  ),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                                  height: 130.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black38,
                                        blurRadius: 3.0,
                                      ),
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(100.0, 10.0, 10.0, 10.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(height: 5.0,),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              width: 180.0,
                                              child: Text(
                                                snapshot.data.documents[index]["doctor_data"]["name"],
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: 250.0,
                                          child: Text(
                                            snapshot.data.documents[index]["doctor_data"]["clinica"],
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                          ),
                                        ),
                                        SizedBox(height: 5.0,),
                                        Text(
                                          snapshot.data.documents[index]["doctor_data"]["especialidad"],
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        SizedBox(height: 10.0),
                                        Expanded(
                                          child: Container(
                                            width: 250.0,
                                            child: Image.network(
                                                snapshot.data.documents[index]["doctor_data"]["seguroUrl"]
                                            )
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 20.0,
                                  top: 15.0,
                                  bottom: 15.0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                      child: Image.network(
                                          snapshot.data.documents[index]["doctor_data"]["photo"]
                                      )
                                  ),
                                ),
                              ],
                            ),
                          );
                        }))
                      ),
                    ],
                  ),
                );

            }
          }
      ),
    );
  }
}
