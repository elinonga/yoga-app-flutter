import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:strete_workout/constants.dart';

class YogaApp extends StatefulWidget {
  const YogaApp({Key? key}) : super(key: key);

  @override
  _YogaAppState createState() => _YogaAppState();
}

class _YogaAppState extends State<YogaApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(children: [

        const SizedBox(height: 10),


        /// Hello Chris (Column ya Title + Description) + Image
        helloText(),
        const SizedBox(height: 20),


        /// Row ya Container with one chosen
        rowContainers(),
        const SizedBox(height: 30),


        /// Column ya COntainers
        containersColumn("Technique \nGuides",
            "Learn amazing street workout\n and calisthenics skills",
            kBackgroundColor21, kBackgroundColor22,
            "assets/mill.png"),
        SizedBox(height: 25),


        Container(
          margin: const EdgeInsets.only(
              left: 10, right: 10
          ),
          height: 180,

          decoration: BoxDecoration(

            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.centerRight,
                colors: [kBackgroundColor11, kBackgroundColor12]
            ),

            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 5
              )
            ],

            borderRadius: BorderRadius.circular(12.0),

          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              /// Column (Title + Description)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [

                  SizedBox(height: 20),
                  Text("Skills \nTraining", style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 35,
                      color: kTitleTextColor
                  ),),

                  SizedBox(height: 10),
                  Text("Learn the secrets of\n bodyweight techniques",
                    style: TextStyle(
                        fontSize: 17,
                        color: kTitleTextColor
                    ),),

                ],),

              /// Image
              Container(
                height: 160,
                child: const Image(
                  image: AssetImage("assets/stand.png"),
                ),
              ),



            ],),

        ),
        SizedBox(height: 25),


        containersColumn("Strength \nTraining",
            "Train anytime, everywhere\n and become a superhero!",
            kBackgroundColor32, kBackgroundColor31,
            "assets/lift.png"),
        SizedBox(height: 25),

      ],),

    );
  }


  /// Row ya Container with one chosen
  UnconstrainedBox rowContainers() {
    return UnconstrainedBox(
      child: Container(
        height: 65, width: 380,

        decoration: BoxDecoration(
            color: kTitleTextColor,
            borderRadius: BorderRadius.circular(50.0),

            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 5
              )
            ]
        ),


        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            // All Plans
            Container(
              height: 65, width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),

                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.centerRight,
                    colors: [kBackgroundColor11, kBackgroundColor12]
                ),

              ),

              child: const Center(
                child: Text("All Plans", style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18,
                    color: kTitleTextColor
                ),),
              ),

            ),

            // Bodyweight
            const Text("Bodyweight", style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18,
            ),),

            // Weights
            const Text("Weights", style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18
            ),),
            const SizedBox(width: 1),

          ],
        ),

      ),
    );
  }


  /// Hello Chris (Column ya Title + Description) + Image
  Container helloText() {
    return Container(

      margin: const EdgeInsets.all(22.0),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text("Hello David!", style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 35
              ),),

              Row(
                children: const [

                  Text("Let's ", style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18
                  ),),

                  Text("workout ", style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18,
                      color: kTitlePurple
                  ),),

                  Text("to get some gains!", style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18
                  ),),
                ],
              ),

            ],),

          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://image.freepik.com/free-vector/mysterious-mafia-man-smoking-cigarette_52683-34828.jpg"
            ),
            radius: 30,
          ),

        ],),
    );
  }


  /// Containers Column
  Widget containersColumn(String title, String description,
      Color backgroundColorOne, backgroundColorTwo, String picha) {
    return Container(
      margin: const EdgeInsets.only(
          left: 10, right: 10
      ),
      height: 180,

      decoration: BoxDecoration(

        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
            colors: [backgroundColorOne, backgroundColorTwo]
        ),

        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5
          )
        ],

        borderRadius: BorderRadius.circular(12.0),

      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          /// Image
          Container(
            height: 160,
            child: Image(
              image: AssetImage(picha),
            ),
          ),


          /// Column (Title + Description)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 20),
              Text(title, style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 35,
                  color: kTitleTextColor
              ),),

              const SizedBox(height: 10),
              Text(description, style: const TextStyle(
                  fontSize: 17,
                  color: kTitleTextColor
              ),),

            ],),


        ],),

    );
  }


}
