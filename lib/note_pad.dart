import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotePadScreen extends StatefulWidget {
  const NotePadScreen({super.key});

  @override
  State<NotePadScreen> createState() => _NotePadScreenState();
}

class _NotePadScreenState extends State<NotePadScreen> {
  bool _isdone = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Hello \nMy Notes,',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.white)),
                  IconButton(
                    icon: const Icon(
                      Icons.tune,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 40, 39, 39),
                    borderRadius: BorderRadius.circular(12)),
                child: const TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(right: 10),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.white38)),
                ),
              ),
              const SizedBox(height: 10),
              Card(
                  color: Color.fromARGB(255, 40, 39, 39),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '29th May',
                              style: TextStyle(color: Colors.white38),
                            ),
                            Icon(
                              Icons.ios_share,
                              color: Colors.white38,
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Task Management App Ui Design',
                          style: GoogleFonts.sofiaSans(
                              fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used.',
                          style: TextStyle(color: Colors.white38, fontSize: 10),
                        ),
                        const SizedBox(height: 30),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'Just Now',
                            style: GoogleFonts.poppins(
                                color: Colors.white38, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  )),
              const SizedBox(height: 10),
              SingleChildScrollView(
                child: Card(
                    color: Color.fromARGB(255, 40, 39, 39),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '12th May',
                                style: TextStyle(color: Colors.white38),
                              ),
                              Icon(
                                Icons.ios_share,
                                color: Colors.white38,
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Shopping List',
                            style: GoogleFonts.sofiaSans(
                                fontSize: 20, color: Colors.white),
                          ),
                          Column(
                            children: [
                              Row(children: [
                                Checkbox(
                                    value: _isdone,
                                    onChanged: (value) {
                                      setState(() {
                                        _isdone = value!;
                                      });
                                    },activeColor: Colors.green[600]),
                                    Text('Apple', style: TextStyle(color: Colors.white38,fontSize: 12)),
                              ]),
                                Row(children: [
                                Checkbox(
                                    value: _isdone,
                                    onChanged: (value) {
                                      setState(() {
                                        _isdone = value!;
                                      });
                                    },activeColor: Colors.green[600]),
                                    Text('Mango Juice', style: TextStyle(color: Colors.white38,fontSize: 12)),
                              ]),
                                Row(children: [
                                Checkbox(
                                    value: _isdone,
                                    onChanged: (value) {
                                      setState(() {
                                        _isdone = value!;
                                      });
                                    },activeColor: Colors.green[600]),
                                    Text('Peanut Butter', style: TextStyle(color: Colors.white38,fontSize: 12)),
                              ])
                            ],
                          ),
                          const SizedBox(height: 30),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              '1hr ago',
                              style: GoogleFonts.poppins(
                                  color: Colors.white38, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
