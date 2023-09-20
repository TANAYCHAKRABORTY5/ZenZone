import 'package:doctor_app1/components/button.dart';
import 'package:doctor_app1/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/custom_appbar.dart';

class DoctorDetail extends StatefulWidget {
  const DoctorDetail({super.key});

  @override
  State<DoctorDetail> createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
        appTitle: 'Doctor Details',
        icon: const FaIcon(Icons.arrow_back_ios),

        actions : [
        IconButton(
            onPressed: () {
              setState(() {
                isFav = !isFav;
              });
            },
            icon: FaIcon(isFav ?Icons.favorite_rounded :Icons.favorite_outline,
                color:Colors.red
            ),
        ),
      ],
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              AboutDoctor(), DetailBody(),
              const Spacer(),
              Padding(
                padding:const EdgeInsets.all(20),
                child : Button(
                  width :double.infinity,
                  title: 'Book Appointment' ,
                  onPressed:(){
                    //navigate to booking page
                    Navigator.of(context).pushNamed('booking_page');
                  },
                  disable: false,
                )
              )
            ]
    ),
        ),
    );
  }
  }

  class AboutDoctor extends StatelessWidget {
    const AboutDoctor({Key? key}) : super(key: key);



    @override
    Widget build(BuildContext context) {
      Config().init(context);
      return Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 65.0,
              backgroundImage: AssetImage(
                  'assets/doctor_2.jpg'),
              backgroundColor: Colors.white,
            ),
            Config.spaceMedium,
            Text(
              'Dr.Sandeep Chopra',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Config.spaceSmall,
            SizedBox(
              width: Config.widthSize * 0.75,
              child: const Text(
                'MBBS (International Medical University, Malaysia), MRCP (Royal College of Physicians, United Kingdom)',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
            Config.spaceSmall,
            SizedBox(
              width: Config.widthSize * 0.75,
              child: const Text(
                'Sarawak General Hospital',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),

          ],
        ),

      );
    }
  }
class DetailBody extends StatelessWidget {
  const DetailBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Config.spaceSmall,
           DoctorInfo(),
          Config.spaceSmall,
          const Text('About Doctor' , style : TextStyle(fontWeight: FontWeight.w600 , fontSize: 18),),
          Config.spaceSmall,
          const Text('Dr.Sandeep Chopra is an experience Dentist Specialist at Sarawak, graduated since 2008, and completed his/her training at Sungai Buloh General Hospital' ,
          style: TextStyle(fontWeight: FontWeight.w500,
          height: 1,
          ),
            softWrap: true,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  <Widget>[
        InfoCard(
          label: 'Patients',
          value: '109',
        ),
        const SizedBox(width: 15,),
        InfoCard(
          label: 'Experiences',
          value: '10 years',
        ),
        const SizedBox(width: 15,),
        InfoCard(
          label: 'Rating',
          value: '4.5',
        ),
        //lets extract to another class

      ],
    );
  }
}
class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Config.primaryColor,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 15,
        ),
        child: Column(
          children: <Widget>[
            Text(label,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),),
            const SizedBox(height: 10,),
            Text(value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),),
          ],
        ),
      ),
    );
  }
}



