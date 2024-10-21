import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
            alignment: Alignment.centerLeft,
            child: const Text(
              '  Center',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
            )),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // User Info Card
            Card(
              color: Colors.blueAccent,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.face_unlock_sharp ,size: 40,),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Mausam Rayamajhi",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.mode_edit_outline_rounded,
                                  color: Colors.white,
                                  size: 20,
                                )
                              ],
                            ),
                            Text(
                              "A trendsetter",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildStatColumn('846', 'Collect'),
                        buildStatColumn('51', 'Attention'),
                        buildStatColumn('267', 'Track'),
                        buildStatColumn('39', 'Coupons'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Icons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildIconButton(Icons.account_balance_wallet, 'Wallet'),
                buildIconButton(Icons.local_shipping, 'Delivery'),
                buildIconButton(Icons.message, 'Message'),
                buildIconButton(Icons.miscellaneous_services, 'Service'),
              ],
            ),
            const SizedBox(height: 20),
            // List of Options
            buildOptionTile(Icons.location_on, 'Address',
                'Ensure your harvesting address', Colors.red),
            SizedBox(
              height: 20,
            ),
            buildOptionTile(Icons.privacy_tip, 'Privacy',
                'System permission change', Colors.green),
            SizedBox(
              height: 20,
            ),

            buildOptionTile(Icons.settings, 'General',
                'Basic functional settings', Colors.blue),

            SizedBox(
              height: 20,
            ),
            buildOptionTile(Icons.notifications, 'Notification',
                'Take over the news in time', Colors.orangeAccent),
          ],
        ),
      ),
    );
  }

  Widget buildStatColumn(String number, String label) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  Column buildIconButton(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Icon(icon, size: 25),
            )),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }

  Widget buildOptionTile(
      IconData icon, String title, String subtitle, Color colorIcon) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.blueAccent,
      elevation: 10,
      child: ListTile(
        leading: CircleAvatar(
            backgroundColor: colorIcon.withOpacity(0.2),
            child: Icon(icon, color: colorIcon)),
        title: Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 12),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 15,
        ),
        onTap: () {
          // Handle tap event
        },
      ),
    );
  }
}
