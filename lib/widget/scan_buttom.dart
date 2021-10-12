import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanButtom extends StatelessWidget {
  const ScanButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      child: Icon(Icons.filter_center_focus),
    onPressed: ()async{
      String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('#3D8DEF','Cancelar',false,ScanMode.QR);
     // print(barcodeScanRes);
    },

      
    );
  }
}