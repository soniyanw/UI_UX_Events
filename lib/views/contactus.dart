import 'package:flutter/material.dart';
import 'package:inter_college_event/services/services.dart';
import 'package:inter_college_event/views/widgets/redtext.dart';
import 'package:inter_college_event/views/widgets/ulredtext.dart';
import 'package:inter_college_event/views/widgets/whitetext.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: WhiteText(
          text: "Contact Us",
        ),
        backgroundColor: red,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 48,
                    ),
                    TextButton(
                      onPressed: () {
                        makingPhoneCall();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.phone,
                            color: red,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          RedText3(
                            text: "+91 99999 88888",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.mail,
                            color: red,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          RedText3(
                            text: "zealous.interclg@gmail.com",
                          ),
                        ],
                      ),
                      onPressed: () async {
                        String email =
                            Uri.encodeComponent("zealous.interclg@gmail.com");
                        String subject =
                            Uri.encodeComponent("Query regarding Zealous Fest");
                        String body = Uri.encodeComponent(" ");
                        Uri mail = Uri.parse(
                            "mailto:$email?subject=$subject&body=$body");
                        if (await launchUrl(mail)) {
                          //email app opened
                        } else {
                          //email app is not opened
                        }
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    TextButton(
                      onPressed: () {
                        launchURLtoWeb();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.open_in_browser,
                            color: red,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          RedText3(
                            text: "https://www.rajalakshmi.org/",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.location_on,
                          color: red,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        RedText(
                            text:
                                "Rajalakshmi Engineering College,\nRajalakshmi Nagar Thandalam,\nChennai - 602 105.\nPhone : +91-44-67181111"),
                      ],
                    ),
                    SizedBox(
                      height: 16,
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
