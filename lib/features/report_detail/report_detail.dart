import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:vbpl/widgets/textformfield.dart';
import 'package:vbpl/widgets/tilefile.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReportDetail extends StatefulWidget {
  const ReportDetail({super.key});
  static const String routeName = '/report-detail';
  @override
  State<ReportDetail> createState() => _ReportDetailState();
}

class _ReportDetailState extends State<ReportDetail> {
  final _formKey = GlobalKey<FormState>();

  //create controller
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Colors.black),
        leading: Navigator.of(context).canPop()
            ? IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios),
              )
            : SizedBox(),
        title: Text('TỜ TRÌNH SỐ 1111'),
        titleSpacing: -15,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.upload_rounded),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: TextFormFieldWidget(
                              label: 'Số đến',
                              textFormField: TextFormField(
                                controller: _controller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Không được để trống';
                                  }
                                  return "";
                                },
                                decoration: InputDecoration(
                                  hintText: 'Số đến',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                  filled: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                ),
                                style: TextStyle(
                                    // backgroundColor: Colors.grey[200], // set background color here
                                    ),
                              ),
                              isRequired: true)),
                      SizedBox(width: 10),
                      Expanded(
                          child: TextFormFieldWidget(
                              label: 'Số tờ trình',
                              textFormField: TextFormField(
                                controller: _controller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Không được để trống';
                                  }
                                  return "";
                                },
                                decoration: InputDecoration(
                                  hintText: 'Số đến',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                  filled: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                ),
                                style: TextStyle(
                                    // backgroundColor: Colors.grey[200], // set background color here
                                    ),
                              ),
                              isRequired: true)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(children: [
                    Expanded(
                        child: TextFormFieldWidget(
                            label: 'Đơn vị trình',
                            textFormField: TextFormField(
                              controller: _controller,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Không được để trống';
                                }
                                return "";
                              },
                              decoration: InputDecoration(
                                hintText: 'Số đến',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                              ),
                              style: TextStyle(
                                  // backgroundColor: Colors.grey[200], // set background color here
                                  ),
                            ),
                            isRequired: true)),
                  ]),
                  SizedBox(height: 10),
                  Row(children: [
                    Expanded(
                        child: TextFormFieldWidget(
                            label: 'Ngày ban hành',
                            textFormField: TextFormField(
                              controller: _controller,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Không được để trống';
                                }
                                return "";
                              },
                              decoration: InputDecoration(
                                hintText: 'Số đến',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                              ),
                              style: TextStyle(
                                  // backgroundColor: Colors.grey[200], // set background color here
                                  ),
                            ),
                            isRequired: true)),
                  ]),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child: TextFormFieldWidget(
                              label: 'Khóa',
                              textFormField: TextFormField(
                                controller: _controller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Không được để trống';
                                  }
                                  return "";
                                },
                                decoration: InputDecoration(
                                  hintText: 'Số đến',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                  filled: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                ),
                                style: TextStyle(
                                    // backgroundColor: Colors.grey[200], // set background color here
                                    ),
                              ),
                              isRequired: true)),
                      SizedBox(width: 10),
                      Expanded(
                          child: TextFormFieldWidget(
                              label: 'Kỳ họp',
                              textFormField: TextFormField(
                                controller: _controller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Không được để trống';
                                  }
                                  return "";
                                },
                                decoration: InputDecoration(
                                  hintText: 'Số đến',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                  filled: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                ),
                                style: TextStyle(
                                    // backgroundColor: Colors.grey[200], // set background color here
                                    ),
                              ),
                              isRequired: true)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(children: [
                    Expanded(
                        child: TextFormFieldWidget(
                      label: 'Số đến',
                      textFormField: TextFormField(
                        minLines: 6,
                        maxLines: 6,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Không được để trống';
                          }
                          return "";
                        },
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          hintText: 'Số đến',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                        ),
                        style: TextStyle(
                            // backgroundColor: Colors.grey[200], // set background color here
                            ),
                      ),
                    )),
                  ]),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Row(
                            children: [
                              Text('Văn bản liên quan'),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.link))
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return TileFileWidget(
                                        title: '2957/TTr-UBND');
                                  }),
                            ),
                          )
                        ],
                      )),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                      height: 300,
                      child: SfPdfViewer.network(
                          'https://api.daugiatcc.com/api/fileservice/v1/image/downloads/uploads/20231027/4be9847480e0a5a62388a0ad689cab2f.pdf')),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          print(_controller.text);
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
