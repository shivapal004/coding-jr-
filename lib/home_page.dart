import 'package:flutter/material.dart';
import 'details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Size mq = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [

              SizedBox(height: mq.height * .06,),

              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.amber,
                  ),
                  SizedBox(width: mq.width * .03,),
                  const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Christiana Amandla",
                          style: TextStyle(
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        Text(
                          "Lets Learning to smart",
                          style: TextStyle(
                              fontSize: 12
                          ),
                        )
                      ]
                  ),
                  const Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 16,
                    child: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.search, size: 18,)
                    ),
                  )
                ],
              ),

              SizedBox(height: mq.height * .05,),

              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.lightGreen.shade400,
                    borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                          color: Colors.lightGreen.shade200,
                          borderRadius: BorderRadius.circular(14)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Mathematics Course",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.lightGreen.shade400,
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.calendar_month_sharp, color: Colors.black, size: 12,),
                                SizedBox(width: mq.width * .02),
                                const Text(
                                  "19 Nov, 2023",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: mq.height * .03),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.lightGreen.shade100,
                                    shape: BoxShape.circle
                                ),
                                child: Icon(
                                  Icons.check_circle,
                                  color: Colors.lightGreen.shade400,
                                )
                            ),
                            const SizedBox(width: 8),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Completed",
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  "20",
                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 1,
                          height: 50,
                          color: Colors.white,
                        ),
                        Row(
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.lightGreen.shade100,
                                    shape: BoxShape.circle
                                ),
                                child: Icon(
                                  Icons.access_time_filled,
                                  color: Colors.lightGreen.shade400,
                                )
                            ),
                            const SizedBox(width: 8),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hours spent",
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  "455",
                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: mq.height * .01,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Course',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade600
                      ),
                    ),
                  ),
                ],
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) => const DetailsPage()));
                      },
                      child: const CourseCardOne(
                        image: "assets/images/photoshop.png",
                        title: "Photoshop Editing Course",
                        participants: 230,
                        lessons: 30,
                        rating: 4.8,
                      ),
                    ),
                    SizedBox(width: mq.width * .03),
                    const CourseCardOne(
                      image: "assets/images/illustrator.png", // Replace with actual image path
                      title: "Illustrator Editing Course",
                      participants: 230,
                      lessons: 30,
                      rating: 4.8,
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Course',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade600
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              const SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    CourseCardTwo(
                      image: "assets/images/xd.png", // Replace with actual image path
                      title: "Adobe XD Editing Course",
                      participants: 230,
                      lessons: 30,
                      rating: 4.8,
                    ),
                    CourseCardTwo(
                      image: "assets/images/xd.png", // Replace with actual image path
                      title: "Adobe XD Editing Course",
                      participants: 230,
                      lessons: 30,
                      rating: 4.8,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CourseCardOne extends StatelessWidget {
  final String image;
  final String title;
  final double rating;
  final int participants;
  final int lessons;

  const CourseCardOne(
      {super.key,
        required this.image,
        required this.title,
        required this.rating,
        required this.participants,
        required this.lessons});

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Container(
      width: mq.width * .5,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset(image, width: mq.width * .15, height: mq.height * .08)), // Replace with actual image
          SizedBox(height: mq.height * .01),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: mq.height * .01),
          const Row(
            children: [
              // Avatars(),
              CircleAvatar(radius: 10, backgroundColor: Colors.amber,),
              CircleAvatar(radius: 10, backgroundColor: Colors.purple,),
              SizedBox(width: 5),
              Text("Participants", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Colors.black)),
            ],
          ),
          SizedBox(height: mq.height * .01),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.orange, size: 12),
                  Text("$rating ($participants)", style: const TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.play_circle_outline, size: 12),
                  Text("$lessons Lessons", style: const TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CourseCardTwo extends StatelessWidget {
  final String image;
  final String title;
  final double rating;
  final int participants;
  final int lessons;

  const CourseCardTwo(
      {super.key,
        required this.image,
        required this.title,
        required this.rating,
        required this.participants,
        required this.lessons});

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Container(
      width: mq.width,
      padding: const EdgeInsets.all(14),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            height: mq.height * .1,
              width: mq.width * .22,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Image.asset(image, width: mq.width * .15, height: mq.height * .08)
          ), // Replace with actual image
          SizedBox(width: mq.width * .03),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: mq.height * .01),
              Row(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange, size: 12),
                      Text("$rating ($participants)", style: const TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                  SizedBox(width: mq.width * .1,),
                  Row(
                    children: [
                      const Icon(Icons.play_circle_outline, size: 12),
                      Text("$lessons Lessons", style: const TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  )
                  // SizedBox(width: 5),
                  // Text("Participants", style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
            ],
          )

        ],
      ),
    );
  }
}

// class Avatars extends StatelessWidget {
//   const Avatars({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: SizedBox(
//         height: 50,
//         child: Stack(
//           children: [
//             Positioned(
//               left: 0,
//               child: customAvatar(Colors.purpleAccent,),
//             ),
//             Positioned(
//               left: 20,
//               child: customAvatar(Colors.blueAccent,),
//             ),
//             Positioned(
//               left: 40,
//               child: customAvatar(Colors.purple,),
//             ),
//             Positioned(
//               left: 60,
//               child: customAvatar(Colors.lightGreen),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget customAvatar(Color color){
//     return CircleAvatar(
//       backgroundColor: color,
//       radius: 15,
//     );
//   }
// }

