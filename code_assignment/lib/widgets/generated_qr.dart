import 'package:code_assignment/utils/color_constants.dart';
import 'package:code_assignment/utils/common_widgets.dart';
import 'package:code_assignment/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GeneratedQr extends StatelessWidget {
  final String? uuid;
  final String? xml;

  GeneratedQr({required this.uuid, required this.xml});

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            heightSpacer(5),
            Text(
              'Please ask the cashier to scan \n  the QR to place the payment',
              style: largeStyle(Colors.black),
            ),
            heightSpacer(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QrImageView(
                  data: '$xml',
                  version: QrVersions.auto,
                  size: 200,
                ),
              ],
            ),
            Text(
              '29 Minutes 32 seconds remaining',
              style: largeStyle(Colors.red),
            ),
            heightSpacer(5),
            Text(
              'Exchange rate is',
              style: largeStyle(Colors.black),
            ),
            heightSpacer(5),
            Text(
              '1 LIX -0.00174 USD',
              style: lightStyle(Colors.grey),
            ),
            heightSpacer(10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: primaryColor,
                    ),
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        topRight: Radius.circular(16))),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Show Barcode',
                    style: mediumStyle(Colors.black),
                  ),
                )),
              ),
            ),
            Text(
              '--OR--',
              style: largeStyle(Colors.black),
            ),
            heightSpacer(5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Container(
                width: deviceSize.width * 0.8,
                decoration: BoxDecoration(
                  color: greyColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'Enter UUID manually',
                        style: largeStyle(Colors.black),
                      ),
                      heightSpacer(5),
                      Text(
                        uuid! ?? '-x-w290473',
                        style: largeStyle(Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
