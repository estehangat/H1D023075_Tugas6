import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nim;
  final String nama;
  final int tahunLahir;
  const TampilData({
    Key? key,
    required this.nim,
    required this.nama,
    required this.tahunLahir,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perkenalan'),
        backgroundColor: Color(0xFF2293F0),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF2293F0).withOpacity(0.1), Colors.white],
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.white, Color(0xFF2293F0).withOpacity(0.05)],
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                    children: [
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                        ),
                      ],
                      ),
                      child: Row(
                      children: [
                        Text(
                        'Nama: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                        ),
                        Expanded(
                        child: Text(
                          nama,
                          style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          ),
                        ),
                        ),
                      ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                        ),
                      ],
                      ),
                      child: Row(
                      children: [
                        Text(
                        'NIM: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                        ),
                        Expanded(
                        child: Text(
                          nim,
                          style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          ),
                        ),
                        ),
                      ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                        ),
                      ],
                      ),
                      child: Row(
                      children: [
                        Text(
                        'Umur: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                        ),
                        Expanded(
                        child: Text(
                          '$tahunLahir tahun',
                          style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          ),
                        ),
                        ),
                      ],
                      ),
                    ),
                    ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}