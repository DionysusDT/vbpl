import 'package:flutter/material.dart';
import 'package:vbpl/config/app_router.dart';
import 'package:vbpl/features/home/app_bar_search.dart';
import 'package:vbpl/features/home/home.dart';
import 'package:vbpl/widgets/tile.dart';

class ReceiveReport extends StatefulWidget {
  // final Function? openDrawer;
  // final Function? closeDrawer;
  // const ReceiveReport({super.key, this.openDrawer, this.closeDrawer});
  const ReceiveReport({super.key});
  static const String routeName = '/receive-report';
  @override
  State<ReceiveReport> createState() => _ReceiveReportState();
}

class _ReceiveReportState extends State<ReceiveReport> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          AppBar(
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(color: Colors.black),
            leading: Navigator.of(context).canPop()?IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios),
            ):SizedBox(),
            title: Text('NHẬN TỜ TRÌNH'),
            titleSpacing: -15,
          ),
          
          Padding(  
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 36,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Số đến',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      ),
                      style: TextStyle(
                        
                        // backgroundColor: Colors.grey[200], // set background color here
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ButtonTheme(
                  minWidth: 50,
                  child: ElevatedButton(
                    onPressed: () {
                     
                    },
                    child: Text('Tiếp nhận'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(  
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'SỐ ĐẾN ĐÃ TIẾP NHẬN',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return TileWidget(
                            title:'2957/TTr-UBND',
                            subtitle: 'Về tình hình kinh tế - xã hội 6 tháng đầu năm; nhiệm vụ, giải pháp trọng tâm 6 tháng cuối Về tình hình kinh tế - xã hội 6 tháng đầu năm; nhiệm vụ, giải pháp trọng tâm 6 tháng cuối Về tình hình kinh tế - xã hội 6 tháng đầu năm; nhiệm vụ, giải pháp trọng tâm 6 tháng cuối Về tình hình kinh tế - xã hội 6 tháng đầu năm; nhiệm vụ, giải pháp trọng tâm 6 tháng cuối Về tình hình kinh tế - xã hội 6 tháng đầu năm; nhiệm vụ, giải pháp trọng tâm 6 tháng cuối',
                            icon:Icons.document_scanner_outlined,);
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }  
}
