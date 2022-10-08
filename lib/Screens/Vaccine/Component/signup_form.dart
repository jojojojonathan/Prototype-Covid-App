import 'package:flutter/material.dart';
import 'package:prototype/Screens/Login/Components/login_form.dart';
import 'package:prototype/Screens/Login/Login_screen.dart';
import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
  final TextEditingController _Provinsi = new TextEditingController();
  final TextEditingController _Kategori = new TextEditingController();
  final TextEditingController _Tanggal = new TextEditingController();
  final TextEditingController _Jam = new TextEditingController();
  var Provinsi = ['DKI Jakarta', 'Bandung', 'Semarang', 'Surabaya'];
  var Kategori = ['Masyarakat Umum', 'Pariwisata', 'Lansia', 'Remaja'];
  var Tanggal = ['Senin,11 Juli 2022', 'Selasa,12 Juli 2022', 'Rabu, 13 Juli 2022', 'Kamis, 14 Juli 2022'];
  var Jam = ['08.00-09.00', '09.00-10.00', '10.00-11.00', '11.00-12.00'];
    return Form(
      child: Column(
        children: [
          TextField(
              decoration: InputDecoration(
                hintText: "NIK",
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                hintText: "Nama Sesuai KTP",
              ),
            ),
            SizedBox(height: 30,),
          TextField(
              controller: _Kategori,
              decoration: InputDecoration(
                hintText: "Kategori",
                suffixIcon: PopupMenuButton<String>(
                  icon: const Icon(Icons.arrow_drop_down),
                  onSelected: (String value) {
                    _Kategori.text = value;
                  },
                  itemBuilder: (BuildContext context) {
                    return Kategori
                        .map<PopupMenuItem<String>>((String value) {
                      return new PopupMenuItem(
                          child: new Text(value), value: value);
                    }).toList();
                  },
                ),
              ),
            ),
            SizedBox(height: 30,),
          TextField(
              controller: _Provinsi,
              decoration: InputDecoration(
                hintText: "Provinsi/Kota",
                suffixIcon: PopupMenuButton<String>(
                  icon: const Icon(Icons.arrow_drop_down),
                  onSelected: (String value) {
                    _Provinsi.text = value;
                  },
                  itemBuilder: (BuildContext context) {
                    return Provinsi
                        .map<PopupMenuItem<String>>((String value) {
                      return new PopupMenuItem(
                          child: new Text(value), value: value);
                    }).toList();
                  },
                ),
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              controller: _Tanggal,
              decoration: InputDecoration(
                hintText: "Pilih Tanggal",
                suffixIcon: PopupMenuButton<String>(
                  icon: const Icon(Icons.arrow_drop_down),
                  onSelected: (String value) {
                    _Tanggal.text = value;
                  },
                  itemBuilder: (BuildContext context) {
                    return Tanggal
                        .map<PopupMenuItem<String>>((String value) {
                      return new PopupMenuItem(
                          child: new Text(value), value: value);
                    }).toList();
                  },
                ),
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              controller: _Jam,
              decoration: InputDecoration(
                hintText: "Pilih jam",
                suffixIcon: PopupMenuButton<String>(
                  icon: const Icon(Icons.arrow_drop_down),
                  onSelected: (String value) {
                    _Jam.text = value;
                  },
                  itemBuilder: (BuildContext context) {
                    return Jam
                        .map<PopupMenuItem<String>>((String value) {
                      return new PopupMenuItem(
                          child: new Text(value), value: value);
                    }).toList();
                  },
                ),
              ),
            ),
            SizedBox(height: 30,),
          ElevatedButton(onPressed: (){}, child: Text('Registration'))
        ],
      ),
    );
  }
}
