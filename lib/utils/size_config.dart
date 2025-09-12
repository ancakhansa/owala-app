import 'package:flutter/material.dart';

class SizeConfig {
  // class mediaQuery adalah class yang berfungsi untuk membuat aplikasi yang responsif, dengan cara mengambil ukuran aktual(apa adanya) pada layar platform
  static MediaQueryData _mediaQueryData =
  MediaQueryData.fromView(
    // ignore: deprecated_member_use
    WidgetsBinding.instance.window
  );
  //variabel untuk menampung dafault size dari aplikasi sebelum dideploy ke platform yang spesifik dan mendapatkan ukuran aktual dari platform tersebut (misal : dideploy ke andorid)
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;
  static double defaultSize = 0.0;

// fungsi dari function ini adalah untuk pengambilan awal ketika aplikasi dijalankan dan untuk mendapatkan ukuran dari layar platform
  void init(BuildContext context) {
    // berfungsi untuk mengambil ukuran aktual dari platform
    // karena di dalam variabel _mediaQueryData..
    // di dalammnya memanggil class Media Query
    // yang class Media Query itu sendiri berfungsi untuk
    // mengambil ukuran aktual dari platform
    _mediaQueryData = MediaQuery.of(context);
    // untuk mengambil hanya data data ukuran widht saja
    screenWidth = _mediaQueryData.size.width;
    // untuk mengambil hanya data data ukuran height saja
    screenHeight = _mediaQueryData.size.height;
  }
}

// menggunakan size standar dari handphone iphone x (812 x 375)
double getProporsionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // ini adalah perhitungan untuk menghasilkan nilai dan ukuran 
  return (inputHeight / 812.0) * screenHeight;
}

double getProporsionateScreenWidth(double inputWidht) {
  double screenWidth = SizeConfig.screenWidth;
  return (inputWidht / 375.0) * screenWidth;
}