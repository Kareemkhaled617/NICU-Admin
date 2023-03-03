import 'package:admin_nicu/controllers/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';

import '../../component/default_textfield.dart';
import '../../component/member_ship.dart';

class AddCenter extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController late = TextEditingController();
  TextEditingController long = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController profile = TextEditingController();
  TextEditingController image1 = TextEditingController();
  TextEditingController image2 = TextEditingController();
  TextEditingController image3 = TextEditingController();
  TextEditingController opining = TextEditingController();
  TextEditingController color = TextEditingController();
  late String type;
  late String avilability;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAE3D1),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 60.0, bottom: 60.0, left: 120.0, right: 120.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          elevation: 5.0,
          child: Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 3.3,
                height: MediaQuery.of(context).size.height,
                color: Colors.indigo.shade300,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 70.0, right: 50.0, left: 50.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: <Widget>[
                        const CircleAvatar(
                          backgroundColor: Color(0xffEAE3D1),
                          backgroundImage: NetworkImage(
                            'https://jideguru.github.io/static/img/profile.png',
                          ),
                          radius: 70.0,
                        ),
                        const SizedBox(
                          height: 60.0,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                          child: const Text(
                            "Let's get your Data",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                          child: const Text(
                            "It should put only the needed Data",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 50.0,
                        ),
                        Container(
                          child: const CircleAvatar(
                            backgroundColor: Color(0xffEAE3D1),
                            child: Text(
                              ">",
                              style: TextStyle(color: Color(0xFF44619D)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 40.0, right: 70.0, left: 70.0, bottom: 40.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //InputField Widget from the widgets folder
                      InputField(
                        label: "Email",
                        content: "yo@seethat.com",
                        controller: email,
                      ),

                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Password",
                        content: "*************",
                        controller: password,
                      ),

                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Name",
                        content: "Name",
                        controller: name,
                      ),

                      const SizedBox(height: 20.0),

                      //Gender Widget from the widgets folder

                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Type"),
                          const SizedBox(
                            width: 150,
                          ),
                          DropDown(
                            items: const [
                              "Governmental",
                              "Special Center",
                              "Charities",
                            ],
                            hint: const Text("Governmental"),
                            icon: const Icon(
                              Icons.expand_more,
                              color: Colors.blue,
                            ),
                            onChanged: (val) {
                              type = val!;
                            },
                          ),
                        ],
                      ),

                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Mobile",
                        content: "+22994684468",
                        controller: phone,
                      ),

                      const SizedBox(height: 20.0),

                      //InputField Widget from the widgets folder
                      InputField(
                        label: "Address",
                        content: "Tanta",
                        controller: address,
                      ),

                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Late",
                        content: "0000000000",
                        controller: late,
                      ),

                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Long",
                        content: "0000000000",
                        controller: long,
                      ),

                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Profile Photo",
                        content: "Image",
                        controller: profile,
                      ),
                      const SizedBox(height: 20.0),

                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Images",
                        content: "List of Images",
                        controller: image1,
                      ),
                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Images",
                        content: "List of Images",
                        controller: image2,
                      ),
                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Images",
                        content: "List of Images",
                        controller: image3,
                      ),
                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Color",
                        content: "Color of Icon",
                        controller: color,
                      ),

                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Opining",
                        content: "Your Opinion",
                        controller: opining,
                      ),

                      const SizedBox(height: 20.0),

                      Row(
                        children: [
                          const Text("Avilability"),
                          const SizedBox(
                            width: 150,
                          ),
                          DropDown(
                            items: const ["True", "False"],
                            hint: const Text("True"),
                            icon: const Icon(
                              Icons.expand_more,
                              color: Colors.blue,
                            ),
                            onChanged: (val) {
                              avilability = val!;
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //Membership Widget from the widgets folder

                      Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 170.0,
                          ),
                          MaterialButton(
                            color: Colors.grey[200],
                            onPressed: () {},
                            child: const Text("Cancel"),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          MaterialButton(
                            color: Color(0xFF0467C2),
                            onPressed: () {
                              login(
                                  email: email.text,
                                  pass: password.text,
                                  name: name.text,
                                  phone: phone.text,
                                  address: address.text,
                                  type: type,
                                  availability: avilability,
                                  late: late.text,
                                  long: long.text,
                                  profile: profile.text,
                                  img1: image1.text,
                                  img2: image2.text,
                                  img3: image3.text,
                                  color: color.text,
                                  icon: '',
                                  open: opining.text);
                            },
                            child: const Text(
                              "Save",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
