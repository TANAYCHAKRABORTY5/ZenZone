
import 'package:doctor_app1/components/appointment_card.dart';
import 'package:doctor_app1/components/doctor_card.dart';
import 'package:doctor_app1/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, dynamic> user = {};
  Map<String, dynamic> doctor = {};
  List<dynamic> favList = [];
  List<Map<String, dynamic>> medCat = [
    {
      "icon": FontAwesomeIcons.userDoctor,
      "category": "Physician",
    },
    {
      "icon": FontAwesomeIcons.heartPulse,
      "category": "Nutritionist",
    },
    {
      "icon": FontAwesomeIcons.lungs,
      "category": "Psychiatrist",
    },
    {
      "icon": FontAwesomeIcons.hand,
      "category": "Rehabilitation Specialists",
    },
    {
      "icon": FontAwesomeIcons.personPregnant,
      "category": "Acupuncturist",
    },
    {
      "icon": FontAwesomeIcons.teeth,
      "category": "Dental",
    },
  ];

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    // user = Provider.of<AuthModel>(context, listen: false).getUser;
    // doctor = Provider.of<AuthModel>(context, listen: false).getAppointment;
    // favList = Provider.of<AuthModel>(context, listen: false).getFav;

    return  Scaffold(
      body : Padding(
            padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      Text(
                      'Varun',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                        AssetImage('assets/profile1.jpg'),
                      ),
                    )
                  ],
                ),
                  Config.spaceSmall,
                    Config.spaceSmall,
                  Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                    Config.spaceSmall,
                    SizedBox(
                      height : Config.heightSize * 0.05,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children:
                        List<Widget>.generate(medCat.length, (index) {
                          return Card(
                            margin: const EdgeInsets.only(right: 20),
                            color: Config.primaryColor,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    FaIcon(
                                      medCat[index]['icon'],
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                        width: 20,
                                        ),
                                    Text(
                                    medCat[index]['category'],
                                    style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
    ),
    ),
    ],
    ),
    ),
    );
    }),
    ),
    ),
                    Config.spaceSmall,
                    const Text(
                      'Appointment Today',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Config.spaceSmall,
                    AppointmentCard(),
                    Config.spaceSmall,
                    const Text(
                      'Top Doctors',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Config.spaceSmall,
                    Column(
                      children: List.generate(10, (index) {
                        return const DoctorCard(
                          route: 'doc_details',
                        );
                      }),
                    )


      ]
    ),

  ),
  ),

  ),
  );

}
}
