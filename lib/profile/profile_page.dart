import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var _value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Center(
          child: Text(
            "Profile",
            style: TextStyle(fontSize: 28, color: Colors.black),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ListTile(
                leading: const CircleAvatar(),
                title: const Text(
                  "Stefani Wong",
                  style: TextStyle(fontSize: 24),
                ),
                subtitle: const Text(
                  "Lose a Fat Program",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Edit"),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  card("180cm", "Height"),
                  card("65kg", "Weight"),
                  card("22yo", "Age"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Material(
                borderRadius: BorderRadius.circular(12),
                elevation: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        "Account",
                        style: TextStyle(fontSize: 28, color: Colors.black),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.indigo.shade500,
                      ),
                      title: const Text("Personal Data"),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.list_alt,
                        color: Colors.indigo.shade500,
                      ),
                      title: const Text("Achievement"),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.pie_chart,
                        color: Colors.indigo.shade500,
                      ),
                      title: const Text("Activity History"),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.bar_chart,
                        color: Colors.indigo.shade500,
                      ),
                      title: const Text("Workout Progress"),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Material(
                borderRadius: BorderRadius.circular(12),
                elevation: 8,
                child: Container(
                  margin: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Notification",
                        style: TextStyle(fontSize: 28, color: Colors.black),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.ring_volume_rounded,
                          color: Colors.indigo.shade500,
                        ),
                        title: const Text(
                          "Pop-up Notification",
                        ),
                        trailing: Switch(
                            onChanged: (a) {
                              setState(() {
                                _value = !_value;
                              });
                            },
                            value: _value,
                            activeColor: Colors.pink.shade500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Material(
                borderRadius: BorderRadius.circular(12),
                elevation: 8,
                child: Container(
                  margin: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Other",
                        style: TextStyle(fontSize: 28, color: Colors.black),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.contact_mail_sharp,
                          color: Colors.indigo.shade500,
                        ),
                        title: const Text("Contact Us"),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.privacy_tip,
                          color: Colors.indigo.shade500,
                        ),
                        title: const Text("Privacy Policy"),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.settings,
                          color: Colors.indigo.shade500,
                        ),
                        title: const Text("Settings"),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  card(String text1, String text2) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      elevation: 8,
      child: Container(
        height: 80,
        width: 110,
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text1,
              style: const TextStyle(fontSize: 24, color: Colors.indigo),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text2,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
