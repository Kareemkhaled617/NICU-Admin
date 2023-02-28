import 'package:flutter/material.dart';


import '../../component/default_textfield.dart';
import '../../component/member_ship.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0, bottom: 60.0, left: 120.0, right: 120.0),
        child: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(40.0)),
          elevation: 5.0,
          child: Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width /3.3,
                height: MediaQuery.of(context).size.height,
                color: Colors.yellow[600],
                child: Padding(
                  padding: const EdgeInsets.only(top: 70.0, right: 50.0, left: 50.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: <Widget>[

                        const CircleAvatar(
                          backgroundColor: Colors.black87,
                          backgroundImage: NetworkImage(
                            'https://jideguru.github.io/static/img/profile.png',
                          ),
                          radius: 70.0,
                        ),
                        const SizedBox(height: 60.0,),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5.0,
                              bottom: 5.0
                          ),
                          child: const Text(
                            "Let's get you set up",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),

                        const SizedBox(height: 5.0,),


                        Container(
                          padding: const EdgeInsets.only(
                              top: 5.0,
                              bottom: 5.0
                          ),
                          child: const Text(
                            "It should only take a couple of minutes to pair with your watch",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),

                        const SizedBox(height: 50.0,),


                        Container(
                          child: const CircleAvatar(
                            backgroundColor: Colors.black87,
                            child: Text(
                              ">",
                              style: TextStyle(color: Colors.yellow),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),




              Container(
                padding: const EdgeInsets.only(top: 40.0, right: 70.0, left: 70.0, bottom: 40.0),
                child: Column(
                  children: <Widget>[

                    //InputField Widget from the widgets folder
                    InputField(
                        label: "Name",
                        content: "Name"
                    ),

                    const SizedBox(height: 20.0),

                    //Gender Widget from the widgets folder


                    const SizedBox(height: 20.0),


                    //InputField Widget from the widgets folder
                    InputField(
                        label: "Date of birth",
                        content: "01/02/1986"
                    ),


                    const SizedBox(height: 20.0),


                    //InputField Widget from the widgets folder
                    InputField(
                        label: "Email",
                        content: "yo@seethat.com"
                    ),

                    const SizedBox(height: 20.0),



                    InputField(
                        label: "Mobile",
                        content: "+22994684468"
                    ),


                    const SizedBox(height: 20.0),

                    //InputField Widget from the widgets folder
                    InputField(
                        label: "Customer ID",
                        content: "22223311111"
                    ),


                    const SizedBox(height: 40.0,),

                    //Membership Widget from the widgets folder
                    Membership(),

                    const SizedBox(height: 40.0,),

                    Row(
                      children: <Widget>[
                        const SizedBox(width: 170.0,),
                        MaterialButton(
                          color: Colors.grey[200],
                          onPressed: (){},
                          child: const Text(
                              "Cancel"
                          ),
                        ),

                        const SizedBox(width: 20.0,),

                        MaterialButton(
                          color: Colors.greenAccent,
                          onPressed: (){},
                          child: const Text(
                            "Save",
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }

}