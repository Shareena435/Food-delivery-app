import 'package:flutter/material.dart';

class Termsandconditions extends StatefulWidget {
  const Termsandconditions({super.key});

  @override
  State<Termsandconditions> createState() => _TermsandconditionsState();
}

class _TermsandconditionsState extends State<Termsandconditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
         padding: EdgeInsetsGeometry.symmetric(
          horizontal: 24,
          vertical: 62
         ),
         child: ListView(
           children: [
                  Column(
                              children: [
                  InkWell(
                    child: Container(
                     // height: 162,
                      //width: 24,
                      child:Row(
                        children: [
                          Icon(Icons.arrow_back_ios_new_outlined,
                          color: Color(0xffF79C1C),),
                          SizedBox(width: 10,),
                          Text('Terms & Conditions',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),)
                        ],
                      ) ,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 23),
                  Text('Please read these and conditions carefully\n before using this mobile application',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff595A58)
                  ),
                  
                  ),
                  Center(
                    child: Text(
                      '''
                         1. Acceptance of Terms
                  By using the App, you confirm that you are at least 18 years old or have obtained parental/guardian consent and are fully able and competent to enter into and comply with these Terms.
                  2. Use of the App
                  The App is provided solely for personal and non-commercial use.
                  You agree not to use the App for any illegal or unauthorized purpose.
                  You agree not to modify, reproduce, distribute, or exploit the App’s content in any way.
                  3. User Accounts
                  You may be required to create an account to access certain features.
                  You are responsible for maintaining the confidentiality of your login credentials.
                  The App is not responsible for any unauthorized access or activities on your account.
                  4. Privacy Policy
                  Your use of the App is also governed by our Privacy Policy. By using the App, you consent to the collection, storage, and use of your information as described in the Privacy Policy.
                  5. Intellectual Property Rights
                  All content on the App, including but not limited to text, graphics, logos, and software, is owned by [Your Company Name] or its licensors and is protected by intellectual property laws. You agree not to use this content without prior written consent.
                  6. Limitations of Liability
                  The App is provided on an "as-is" and "as-available" basis.
                  [Your Company Name] is not liable for any errors, interruptions, or losses resulting from your use of the App.
                  To the fullest extent permitted by law, [Your Company Name] disclaims all warranties, express or implied.
                  7. Termination
                  We reserve the right to terminate or suspend access to the App, without prior notice or liability, for any reason, including a breach of these Terms.
                  8. Changes to Terms
                  We may update these Terms at any time. Changes will be effective immediately upon posting on the App. Your continued use of the App constitutes acceptance of the revised Terms.
                  9. Governing Law
                  These Terms are governed by and construed in accordance with the laws of [Your Jurisdiction].
                  10. Contact Us
                  If you have any questions or concerns about these Terms, please contact us
                       '''),
                  ),
                  ]),
                ],
         ))
    );
  }
}