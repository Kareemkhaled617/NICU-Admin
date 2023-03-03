import 'package:admin_nicu/controllers/controller.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import '../../../common/app_colors.dart';
import '../../../common/app_responsive.dart';

class RecruitmentDataWidget extends StatefulWidget {
  const RecruitmentDataWidget({super.key});

  @override
  _RecruitmentDataWidgetState createState() => _RecruitmentDataWidgetState();
}

class _RecruitmentDataWidgetState extends State<RecruitmentDataWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getHospitalData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data as List;
            return Container(
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hospital Data",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.black,
                          fontSize: 22,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColor.yellow,
                            borderRadius: BorderRadius.circular(100)),
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        child: Text(
                          "View All",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColor.black),
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                  Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      /// Table Header
                      TableRow(
                        decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                            color: Colors.grey,
                            width: 0.5,
                          )),
                        ),
                        children: [
                          tableHeader("Name"),
                          if (!AppResponsive.isMobile(context))
                            tableHeader("Type"),
                          tableHeader("Address"),
                          tableHeader("phone"),
                          tableHeader("Late"),
                          tableHeader("Long"),
                          tableHeader("Availability"),
                          if (!AppResponsive.isMobile(context)) tableHeader(""),
                        ],
                      ),
                      ...data.map(
                        (element) => tableRow(
                          context,
                          name: element['name']??'',
                          color:element['availability'] == 'True'? Colors.green:Colors.red,
                          image:  element['profile']??'',
                          type: element['type']??'',
                          availability: element['availability']??'',
                          long: element['long']??''.toString(),
                          late: element['late']??''.toString(),
                          phone: element['phone']??'',
                          address: element['address']??''

                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text("Showing 1 out of ${data.length} Results"),
                        const Text(
                          "View All",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          } else {
            return const CircularProgressIndicator();
          }
        });
  }

  TableRow tableRow(context,
      {name,
      availability,
      long,
      late,
      address,
      phone,
      image,
      type,
      color}) {
    return TableRow(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
        ),
        children: [
          //Full Name
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(backgroundImage: NetworkImage(image),radius: 15,),
                const SizedBox(width: 10,),
                Flexible(child: Text(name,maxLines: 3,))
              ],
            ),
          ),
          // Designation
          if (!AppResponsive.isMobile(context)) Text(type),
          if (!AppResponsive.isMobile(context)) Text(address,maxLines: 5,),
          if (!AppResponsive.isMobile(context)) Text(phone),
          if (!AppResponsive.isMobile(context)) Text(late),
          if (!AppResponsive.isMobile(context)) Text(long),
          //Status
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
                height: 10,
                width: 10,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(availability),
            ],
          ),
          // Menu icon
          if (!AppResponsive.isMobile(context))
            InkWell(
              onTap: (){
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.success,
                  onCancelBtnTap: (){
                  },
                  onConfirmBtnTap: (){},
                  showCancelBtn: true,
                  cancelBtnText: 'Delete',
                  confirmBtnText: 'Update',
                  customAsset: 'assets/user1.jpg',
                  text: name,
                );
              },
              child: Image.asset(
                "assets/more.png",
                color: Colors.grey,
                height: 30,
              ),
            )
        ]);
  }

  Widget tableHeader(text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, color: AppColor.black),
      ),
    );
  }
}
