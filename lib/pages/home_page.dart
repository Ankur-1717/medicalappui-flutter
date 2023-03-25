import "package:flutter/material.dart";
import "package:medicalappui/utils/category_card.dart";
import "package:medicalappui/utils/doctor_card.dart";

class HomePage extends StatefulWidget {
    const HomePage({Key ? key}) : super(key : key);

    @override
    State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.grey[300],
            body: SafeArea(
                child: Column(
                    children: [
                        //app bar
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                    Column (
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            Text(
                                                'Hello,',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                                'Jerome K Jerome',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 24,
                                                ),
                                            ), 
                                        ],
                                    ),
                                    Container(
                                        padding: EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                            color: Colors.deepPurple[100],
                                            borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: Icon(Icons.person),
                                    ),
                                ],
                            ),
                        ),
                        SizedBox(height: 25),

                        //card -> how do you feel
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.pink[100],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(children: [
                              Container(
                                height: 100,
                                width: 100,
                                color: Colors.deepPurple,  
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              //how do you feel + get started.
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('How do you feel',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16, 
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text('Feel out your medical card right now',
                                      style: TextStyle(
                                        fontSize: 14, 
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: Colors.deepPurple[300],
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Get Started',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),  
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],),
                          ),
                        ),
                        SizedBox(height: 25,),
                        
                        //SearchBar
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[100],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                border: InputBorder.none,
                                hintText: 'How can we help you?',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 25),

                        //horizontal listview

                        Container(
                          height: 80,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              CategoryCard(
                                iconImagePath: 'lib/icons/icon3.png',
                                profession: 'Dentist',
                              ),
                              CategoryCard(
                                iconImagePath: 'lib/icons/icon3.png',
                                profession: 'Dentist',
                              ),
                              CategoryCard(
                                iconImagePath: 'lib/icons/icon3.png',
                                profession: 'Dentist',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25),

                        //Doctor List
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text('Doctor list',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text('See all',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey[500],
                              ),
                            ),
                          ],),
                        ),
                        SizedBox(height: 25),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25.0),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                DoctorCard(
                                  doctorImagePath: 'lib/images/download.jpeg', 
                                  doctorName: 'Dr. Arun Kumar',
                                  rating: '4.9',
                                  doctorProfession: 'Eye Specialist, 42 y.e.',
                                ),
                                DoctorCard(
                                  doctorImagePath: 'lib/images/download.jpeg', 
                                  doctorName: 'Dr. Arun Kumar',
                                  rating: '4.9',
                                  doctorProfession: 'Eye Specialist, 42 y.e.',
                                ),
                                DoctorCard(
                                  doctorImagePath: 'lib/images/download.jpeg', 
                                  doctorName: 'Dr. Arun Kumar',
                                  rating: '4.9',
                                  doctorProfession: 'Eye Specialist, 42 y.e.',
                                ),
                              ],
                            ),
                          )
                        )
                      ]
                )
            )

        );
    }
}