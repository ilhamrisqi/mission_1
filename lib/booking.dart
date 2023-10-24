import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';


class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final _bookingKey = GlobalKey<FormState>();
  final _ctrlFullName = TextEditingController();
  final _ctrlEmail = TextEditingController();
  final _crtlPhone = TextEditingController();
  final _ctrlCity = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Hotel OYO Surabaya Barat"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(16),
        child: Form(
          key: _bookingKey,
          child: Column(
            children: [
              TextFormField(
                controller: _ctrlFullName,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Input Full Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak boleh dibiarkan kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 25),
              TextFormField(
                controller: _ctrlEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Input Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email_rounded),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return !EmailValidator.validate(value.toString())
                      ? 'Email tidak Valid!'
                      : null;
                },
              ),
              const SizedBox(height: 25),
              TextFormField(
                controller: _crtlPhone,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Input Phone Number',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone_android_rounded),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Nomor telepon wajib diisi!';
                  }
                  final phoneNumber = value.replaceAll(RegExp(r'[^\d]'), '');
                  if (phoneNumber.length < 8 || phoneNumber.length > 13) {
                    return 'Nomor telepon harus antara 8 dan 13 digit';
                  }
                  else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                          return 'Nomor Telepon hanya boleh mengandung angka';
                        }
                  return null;
                },
              ),
              const SizedBox(height: 25),
              TextFormField(
                controller: _ctrlCity,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Input City',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.location_city_rounded),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Silakan masukkan nama kota!';
                  }
                  else if (RegExp(r'[0-9]').hasMatch(value)){
                    return 'Nama Kota tidak boleh ada angka!';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              ElevatedButton.icon(
                onPressed: () {
                  if (_bookingKey.currentState!.validate()) {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text(' Booking Confirmation'),
                        content: Text(
                            'Full Name: ${_ctrlFullName.text}\nEmail: ${_ctrlEmail.text}\nNo HP: ${_crtlPhone.text}\nKota: ${_ctrlCity.text}'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context, 'OK');
                               Navigator.pop(context, 'OK');
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                icon: Icon(Icons.hotel),
                label: Text("Booking Now"),
                style: ElevatedButton.styleFrom(
                  elevation: 2,
                  padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
                  backgroundColor: Colors.green[700],
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
