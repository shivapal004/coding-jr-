import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [

            SizedBox(height: mq.height * .2),

            Stack(
              clipBehavior: Clip.none,
              children: [

                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 28.0),
                    child: Column(
                      children: [

                        SizedBox(height: mq.height * .05),

                        const Text(
                          "Payment Success",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24
                          ),
                        ),

                        SizedBox(height: mq.height * .01,),

                        Text(
                          "\$35.00",
                          style: TextStyle(
                              color: Colors.greenAccent.shade200,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                          ),
                        ),

                        SizedBox(height: mq.height * .03,),

                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              border: Border.all(color: Colors.grey.shade400, width: 1),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.deepPurple,
                                    radius: 10,
                                  ),
                                  SizedBox(width: mq.width * .02,),
                                  const Text(
                                      "Christiana Amandla"
                                  )
                                ],
                              ),
                              SizedBox(height: mq.height * .03,),
                              const Text(
                                "Adobe Xd Editing Course",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),
                              ),
                              SizedBox(height: mq.height * .06,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'ID Transcription',
                                        style: TextStyle(
                                            fontSize: 12
                                        ),
                                      ),
                                      SizedBox(height: mq.height * .008,),
                                      const Text(
                                        "TA11231PW",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Invoice Date',
                                        style: TextStyle(
                                            fontSize: 12
                                        ),
                                      ),
                                      SizedBox(height: mq.height * .008,),
                                      const Text(
                                        "NOV14, 2023",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),

                        SizedBox(height: mq.height * .03,),
                        
                        Image.asset(
                          "assets/images/barcode.png",
                          height: mq.height * .06,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: -mq.height * .05,
                  left: mq.width  * .2,
                  right: mq.width  * .2,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey.shade300,
                    child: CircleAvatar(
                      radius: 42,
                      backgroundColor: Colors.greenAccent.shade200,
                      child: const Icon(Icons.check, color: Colors.white, size: 50,),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: mq.height * .03),

            SizedBox(
              width: mq.width * 1,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Done',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
