import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'login-page';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 100 Days',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 1;

  final List<String> description = [
    "Saya sekolah di SMK Bakti Nusantara 666, dikelas XI PPLG 2",
  ];
  final List<String> keahlian = [
    '•HTML CSS',
    '•JS Dasar',
    '•Microsoft Office',
  ];
  final List<String> kontak = [
    '•+62 895-1029-2991',
    '•reynnld@gmail.com',
    '•@reynnldi_',
  ];
  final List<String> dataPribadi = [
    '•Tempat, Tanggal Lahir: Bandung, 23 Juli 2007',
    '•Alamat: Rancaekek',
    '•Jenis Kelamin: Laki-laki',
    '•Agama: Islam',
    '•Kewarnegaraan: Indonesia',
  ];
  final List<String> pendidikan = [
    '•SDN Nusa Indah',
    '•SMPN 3 Rancaekek',
    '•SMK Bakti Nusantara 666',
  ];
  final List<String> pengalaman = [
    '•Menjuarai lomba basket, peringkat 2',
    'baknus character camp',
    '•Menjadi CEO Nasa'
  ];
  final List<String> hobi = [
    '•Bermain Game',
    '•Bermain Basket',
    '•Rebahan',
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _setTime() {
    print('Set Time');
  }

  void _addTime() {
    print('Add Time');
  }

  void itemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.book)),
              Tab(icon: Icon(Icons.photo_library)),
              Tab(icon: Icon(Icons.calculate)),
            ]),
            title: Text("Tab Bar"),
          ),
          body: TabBarView(
            children: [
              Stack(
        children: <Widget>[
          Positioned(
            left: 20.0,
            top: 20.0,
            child: Container(
              width: 195,
              height: 775,
              color: Color.fromARGB(255, 3, 217, 255),
              child: Column(children: [
                const SizedBox(height: 15.0),
                const Align(
                  child: CircleAvatar(
                    radius: 80.0,
                    backgroundImage: AssetImage(
                      'assets/cv.jpeg',
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
                const Align(
                  child: Text(
                    'Roy Reynaldi Julian',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Align(
                  child: Text(
                    'Jurusan PPLG',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Align(
                  child: Text(
                    description.first,
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
                const SizedBox(height: 25.0),
                const Align(
                  child: Text(
                    'Keahlian',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Column(
                  children: keahlian
                      .map(
                        (skill) => Align(
                          child: Text(
                            skill,
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 25.0),
                const Align(
                  child: Text(
                    'Kontak',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Column(
                  children: kontak
                      .map(
                        (skill) => Align(
                          child: Text(
                            skill,
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ]),
            ),
          ),
          Positioned(
            right: 20.0,
            top: 20.0,
            child: Container(
              width: 195,
              height: 775,
              child: Column(children: [
                const SizedBox(height: 15.0),
                const Align(
                  child: Text(
                    'Data Pribadi',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  children: dataPribadi
                      .map(
                        (skill) => Align(
                          child: Text(
                            skill,
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 15.0),
                const Align(
                  child: Text(
                    'Pendidikan',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  children: pendidikan
                      .map(
                        (skill) => Align(
                          child: Text(
                            skill,
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 15.0),
                const Align(
                  child: Text(
                    'Pengalaman',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  children: pengalaman
                      .map(
                        (skill) => Align(
                          child: Text(
                            skill,
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 15.0),
                const Align(
                  child: Text(
                    'Hobi',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  children: hobi
                      .map(
                        (skill) => Align(
                          child: Text(
                            skill,
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ]),
            ),
          ),
        ],
      ),
              Text('cacat'),
              Text('cacat'),
            ],
          ),
        ),
      ),
    );
  }
}
