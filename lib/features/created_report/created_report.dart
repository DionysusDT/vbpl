import 'package:flutter/material.dart';
import 'package:vbpl/widgets/tile.dart';

class CreatedReport extends StatefulWidget {
  const CreatedReport({super.key});
  static const String routeName = '/created-report';
  

  @override
  State<CreatedReport> createState() => _CreatedReportState();
}

class _CreatedReportState extends State<CreatedReport> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          appBarCustom(context),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'TỜ TRÌNH ĐÃ TẠO',
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
                            icon:Icons.document_scanner_outlined);
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget appBarCustom(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
                // widget.openDrawer!();
              },
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Tìm kiếm văn bản',
                  border: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Dialog Title'),
                      content: const Text('This is the dialog content.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }

  

}