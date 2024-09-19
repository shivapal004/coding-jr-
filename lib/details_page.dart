import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
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

              SizedBox(height: mq.height * .05,),

              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 16,
                    child: IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_new, size: 16,)
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "Details",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18
                    ),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 16,
                    child: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.notifications_outlined, size: 16)
                    ),
                  ),
                ],
              ),

              SizedBox(height: mq.height * .04,),
        
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Our Student",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: mq.height * .01,),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.pinkAccent,
                          child: Icon(Icons.person),
                        ),
                        SizedBox(width: mq.width * .02,),
                        const CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.blueAccent,
                          child: Icon(Icons.person),
                        ),
                        SizedBox(width: mq.width * .02,),
                        const CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.amber,
                          child: Icon(Icons.person),
                        ),
                        SizedBox(width: mq.width * .02,),
                        const CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.purple,
                          child: Icon(Icons.person),
                        ),
                        SizedBox(width: mq.width * .02,),
                        const CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.lightBlueAccent,
                          child: Icon(Icons.person),
                        ),
                      ],
                    ),
                    SizedBox(height: mq.height * .02,),
                    const Text(
                      "Photoshop Editing Course",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18
                      ),
                    ),
                    SizedBox(height: mq.height * .01,),
                    const Text(
                      "A representation that can convey the three-dimensional aspect of a design through a two-dimensional medium.",
                      style: TextStyle(
                        color: Colors.black54
                      ),
                    ),
                    SizedBox(height: mq.height * .015,),
                    Row(
                      children: [
                        const Icon(Icons.play_circle_outline),
                        SizedBox(width: mq.width * .01,),
                        Text(
                          "30 Lessons",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade700
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.access_time_rounded),
                        SizedBox(width: mq.width * .01,),
                        Text(
                            "13h 30min",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade700
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
        
              SizedBox(height: mq.height * .01,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Video',
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
        
              SizedBox(
                height: mq.height * .4,
                child: ListView(
                  children: [
                    videoTile('Introduction', '3h 30min'),
                    videoTile('Install Software', '1h 30min'),
                    videoTile('Learn Tools', '2h 30min'),
                    videoTile('Tracing Sketsa', '2h 30min'),
                    videoTile('Tracing Sketsa', '2h 30min'),
                  ],
                ),
              ),
        
            ],
          ),
        ),
      ),

     
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: mq.height * .12,
        color: Colors.white,
        child: Row(
          children: [
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.lightGreen,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Icon(Icons.add)
            ),
            SizedBox(width: mq.width * .05,),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.lightGreen,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Enroll Now'),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget videoTile(String title, String duration) {
    Size mq = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(10)
                ),
                  child: const Icon(Icons.lock, size: 24, color: Colors.black54)
              ),
              SizedBox(width: mq.width * .03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: mq.height * .005),
                  Row(
                    children: [
                      const Icon(Icons.schedule, size: 16, color: Colors.grey),
                      SizedBox(width: mq.width * .01),
                      Text(
                        duration,
                        style: const TextStyle(
                          fontSize: 12
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

          TextButton(
            onPressed: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const Icon(Icons.play_circle_fill, color: Colors.lightGreen, size: 14,),
                  SizedBox(width: mq.width * .03),
                  const Text(
                      'Play Video',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black87
                    ),
                  ),
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }

}
