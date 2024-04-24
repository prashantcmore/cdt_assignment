import 'dart:convert';

import 'package:code_assignment/widgets/generated_qr.dart';
import 'package:code_assignment/utils/color_constants.dart';
import 'package:code_assignment/utils/common_widgets.dart';
import 'package:code_assignment/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../models/QrData.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  TextEditingController amountController = TextEditingController();

  String dropdownValue = 'QAR';

  var jsonModel = {
    "success": true,
    "data": {
      "uuid": "f-n203697",
      "qr":
          "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<svg xmlns=\"http://www.w3.org/2000/svg\" version=\"1.1\" width=\"300\" height=\"300\" viewBox=\"0 0 300 300\"><rect x=\"0\" y=\"0\" width=\"300\" height=\"300\" fill=\"#ffffff\"/><g transform=\"scale(9.091)\"><g transform=\"translate(0,0)\"><path fill-rule=\"evenodd\" d=\"M9 0L9 1L8 1L8 2L9 2L9 3L8 3L8 4L10 4L10 7L11 7L11 4L12 4L12 5L15 5L15 6L14 6L14 8L13 8L13 6L12 6L12 9L14 9L14 10L11 10L11 11L10 11L10 9L11 9L11 8L6 8L6 9L8 9L8 10L9 10L9 11L8 11L8 12L6 12L6 11L7 11L7 10L3 10L3 12L2 12L2 11L1 11L1 9L5 9L5 8L0 8L0 12L2 12L2 13L3 13L3 12L4 12L4 11L5 11L5 12L6 12L6 13L7 13L7 14L6 14L6 15L5 15L5 14L4 14L4 17L5 17L5 16L6 16L6 17L8 17L8 16L9 16L9 17L10 17L10 18L4 18L4 19L7 19L7 20L3 20L3 19L1 19L1 17L0 17L0 19L1 19L1 20L0 20L0 25L1 25L1 20L3 20L3 21L2 21L2 22L3 22L3 23L2 23L2 24L3 24L3 25L7 25L7 24L3 24L3 23L7 23L7 22L9 22L9 21L12 21L12 22L13 22L13 23L12 23L12 25L13 25L13 24L14 24L14 25L16 25L16 26L15 26L15 27L14 27L14 28L15 28L15 27L16 27L16 28L17 28L17 29L18 29L18 31L19 31L19 30L20 30L20 31L21 31L21 32L20 32L20 33L21 33L21 32L22 32L22 31L25 31L25 30L26 30L26 31L27 31L27 32L23 32L23 33L27 33L27 32L29 32L29 33L30 33L30 32L31 32L31 33L32 33L32 32L31 32L31 30L33 30L33 27L32 27L32 26L33 26L33 24L32 24L32 26L31 26L31 25L29 25L29 24L31 24L31 23L32 23L32 22L33 22L33 21L32 21L32 20L31 20L31 19L32 19L32 18L33 18L33 17L32 17L32 16L31 16L31 15L32 15L32 14L33 14L33 13L31 13L31 15L30 15L30 16L31 16L31 19L30 19L30 17L29 17L29 15L27 15L27 17L26 17L26 15L24 15L24 16L23 16L23 15L22 15L22 13L23 13L23 14L24 14L24 12L25 12L25 13L26 13L26 14L27 14L27 13L30 13L30 12L31 12L31 11L32 11L32 10L33 10L33 9L32 9L32 8L31 8L31 9L30 9L30 8L29 8L29 9L30 9L30 10L27 10L27 9L28 9L28 8L27 8L27 9L26 9L26 8L24 8L24 7L25 7L25 5L24 5L24 4L25 4L25 2L23 2L23 1L24 1L24 0L23 0L23 1L22 1L22 2L21 2L21 3L20 3L20 4L18 4L18 3L15 3L15 4L14 4L14 3L13 3L13 4L12 4L12 2L18 2L18 1L21 1L21 0L17 0L17 1L15 1L15 0L14 0L14 1L11 1L11 2L10 2L10 0ZM10 3L10 4L11 4L11 3ZM21 3L21 5L23 5L23 7L24 7L24 5L23 5L23 4L24 4L24 3L23 3L23 4L22 4L22 3ZM15 4L15 5L16 5L16 6L15 6L15 7L16 7L16 8L18 8L18 9L19 9L19 8L20 8L20 10L18 10L18 11L17 11L17 9L15 9L15 8L14 8L14 9L15 9L15 10L16 10L16 11L15 11L15 12L14 12L14 11L12 11L12 13L11 13L11 12L10 12L10 13L9 13L9 12L8 12L8 14L7 14L7 15L6 15L6 16L8 16L8 15L10 15L10 16L11 16L11 18L10 18L10 19L8 19L8 20L10 20L10 19L11 19L11 18L13 18L13 19L12 19L12 21L15 21L15 22L16 22L16 23L14 23L14 24L16 24L16 25L17 25L17 26L18 26L18 25L21 25L21 27L22 27L22 26L24 26L24 25L23 25L23 24L21 24L21 23L20 23L20 22L19 22L19 21L21 21L21 22L22 22L22 23L24 23L24 24L26 24L26 23L24 23L24 22L26 22L26 21L27 21L27 22L29 22L29 21L30 21L30 23L31 23L31 20L30 20L30 19L29 19L29 17L27 17L27 18L28 18L28 19L26 19L26 17L24 17L24 18L22 18L22 20L21 20L21 19L20 19L20 18L18 18L18 19L17 19L17 20L14 20L14 19L15 19L15 18L16 18L16 17L17 17L17 16L18 16L18 15L20 15L20 16L19 16L19 17L20 17L20 16L21 16L21 17L22 17L22 16L21 16L21 15L20 15L20 14L19 14L19 12L20 12L20 13L22 13L22 12L21 12L21 11L22 11L22 10L23 10L23 12L24 12L24 10L23 10L23 8L20 8L20 5L19 5L19 7L18 7L18 5L17 5L17 4ZM8 5L8 7L9 7L9 5ZM16 6L16 7L17 7L17 6ZM21 6L21 7L22 7L22 6ZM25 10L25 12L26 12L26 13L27 13L27 12L26 12L26 11L27 11L27 10ZM30 10L30 11L28 11L28 12L30 12L30 11L31 11L31 10ZM18 11L18 12L15 12L15 13L18 13L18 12L19 12L19 11ZM10 13L10 15L11 15L11 13ZM12 13L12 14L13 14L13 15L12 15L12 17L13 17L13 16L14 16L14 17L15 17L15 16L14 16L14 15L16 15L16 16L17 16L17 15L16 15L16 14L14 14L14 13ZM0 14L0 15L1 15L1 14ZM2 14L2 16L3 16L3 14ZM2 17L2 18L3 18L3 17ZM24 18L24 19L25 19L25 21L26 21L26 19L25 19L25 18ZM28 19L28 20L27 20L27 21L29 21L29 19ZM17 20L17 21L18 21L18 20ZM22 20L22 21L23 21L23 22L24 22L24 21L23 21L23 20ZM3 21L3 22L4 22L4 21ZM6 21L6 22L7 22L7 21ZM17 22L17 23L16 23L16 24L17 24L17 25L18 25L18 24L17 24L17 23L19 23L19 24L20 24L20 23L19 23L19 22ZM8 23L8 27L9 27L9 25L10 25L10 23ZM27 23L27 24L28 24L28 23ZM25 25L25 28L28 28L28 25ZM10 26L10 27L11 27L11 28L10 28L10 31L11 31L11 29L12 29L12 30L13 30L13 31L12 31L12 33L13 33L13 32L14 32L14 33L15 33L15 32L14 32L14 31L16 31L16 32L17 32L17 33L18 33L18 32L17 32L17 31L16 31L16 30L15 30L15 29L12 29L12 27L13 27L13 26ZM19 26L19 27L17 27L17 28L18 28L18 29L19 29L19 27L20 27L20 26ZM26 26L26 27L27 27L27 26ZM29 26L29 27L30 27L30 26ZM31 27L31 28L29 28L29 29L31 29L31 28L32 28L32 27ZM8 28L8 33L9 33L9 28ZM20 28L20 30L21 30L21 31L22 31L22 30L21 30L21 29L22 29L22 28ZM23 28L23 29L24 29L24 28ZM26 29L26 30L27 30L27 29ZM28 30L28 31L29 31L29 30ZM0 0L0 7L7 7L7 0ZM1 1L1 6L6 6L6 1ZM2 2L2 5L5 5L5 2ZM26 0L26 7L33 7L33 0ZM27 1L27 6L32 6L32 1ZM28 2L28 5L31 5L31 2ZM0 26L0 33L7 33L7 26ZM1 27L1 32L6 32L6 27ZM2 28L2 31L5 31L5 28Z\" fill=\"#000000\"/></g></g></svg>\n",
      "barcode":
          "iVBORw0KGgoAAAANSUhEUgAAAOAAAAAeAQMAAAAPe4DLAAAABlBMVEX///8AAABVwtN+AAAAAXRSTlMAQObYZgAAAAlwSFlzAAAOxAAADsQBlSsOGwAAADBJREFUKJFj+MzDbMPMY/PHhtng/PnPh/nPfDCwP3PggI3xgT/nGUYlRyVHJSmXBAASP52AWytiwwAAAABJRU5ErkJggg==",
      "qr_valid_until": "2024-04-23T14:34:54.000000Z",
      "apple_pass_file":
          "https://lix-bucket.s3.amazonaws.com/applepasses/5fb7c845-7423-4cd1-98c5-f7129d1ec4e8880.pkpass"
    },
    "message": "QR Code generated successfully"
  };

  QrData? qrData;

  dataFromJson(var jsonData) async {
    setState(() {
      isLoading = true;
    });
    qrData = await QrData.fromJson(jsonData);
    setState(() {
      isLoading = false;
      isQrGenerated = true;
    });

    await showDialog(
        context: context,
        builder: (ctx) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
              child: GeneratedQr(
                  uuid: qrData!.data!.uuid, xml: qrData!.data!.barcode),
            ));
  }

  var isLoading = false;
  var isQrGenerated = false;
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heightSpacer(5),
                  Text(
                    'LIX Pay',
                    style: XlargeStyle(Colors.black),
                  ),
                  heightSpacer(20),
                  Text(
                    'Pay with LIX rewards',
                    style: largeStyle(Colors.black),
                  ),
                  heightSpacer(5),
                  Text(
                    'Enter the amount of points you want to use',
                    style: mediumStyle(Colors.black),
                  ),
                  heightSpacer(10),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: amountController,
                          decoration: InputDecoration(
                            hintText: 'Enter your amount',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      widthSacer(5),
                      Container(
                        width: deviceSize.width * 0.3,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>[
                              'QAR',
                              'RS',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            icon: Icon(Icons.arrow_drop_down),
                          ),
                        ),
                      ),
                      widthSacer(5),
                    ],
                  ),
                  heightSpacer(10),
                  Row(
                    children: [
                      Text(
                        'Remaining Balance :',
                        style: mediumStyle(Colors.black),
                      ),
                      widthSacer(5),
                      Text(
                        '176.00 LIXX Token',
                        style: mediumStyle(Color.fromRGBO(217, 5, 5, 1)),
                      ),
                    ],
                  ),
                  heightSpacer(20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: isQrGenerated
                          ? () {}
                          : () async {
                              setState(() {
                                isLoading = true;
                              });
                              await dataFromJson(jsonModel);
                              setState(() {
                                isQrGenerated = true;
                              });
                              setState(() {
                                isLoading = false;
                              });
                            },
                      child: Container(
                        decoration: BoxDecoration(
                            color: isQrGenerated ? greyColor2 : primaryColor,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Generated QR Code',
                            style: mediumStyle(Colors.white),
                          ),
                        )),
                      ),
                    ),
                  ),
                  !isQrGenerated
                      ? Container()
                      : GeneratedQr(
                          uuid: qrData!.data.uuid,
                          xml: qrData!.data.barcode,
                        )
                ],
              ),
            ),
          );
  }
}
