import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 254, 254),
      appBar: AppBar(
        title: Text("HomePage"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 33, 20, 181),
        foregroundColor: Color.fromARGB(255, 254, 254, 254),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Name"),
              accountEmail: Text("Email"),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 14, 14, 179),
              ),
            ),

            ListTile(
              title: Text("Homepage"),
              leading: Icon(Icons.home, color: Color.fromRGBO(37, 99, 235, 1)),
              hoverColor: const Color.fromRGBO(239, 246, 255, 1),
              onTap: () {},
            ),
            Divider(),
            Spacer(),

            ListTile(
              title: Text("Profile"),
              leading: Icon(
                Icons.person,
                color: Color.fromRGBO(37, 99, 235, 1),
              ),
              hoverColor: const Color.fromRGBO(239, 246, 255, 1),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.end, onno side chole jay
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(239, 246, 255, 1),
                      foregroundColor: const Color.fromRGBO(37, 99, 235, 1),
                      fixedSize: Size(120, 45),
                      side: const BorderSide(
                        color: Color.fromRGBO(37, 99, 235, 1),
                      ),
                      //elevation:10,
                    ),

                    child: Text("TextButton"),
                  ),
                  SizedBox(width: 10),

                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(37, 99, 235, 1),
                      foregroundColor: const Color.fromRGBO(239, 246, 255, 1),
                      fixedSize: Size(150, 45),
                      side: BorderSide(),
                    ),

                    child: Text("ElevatedButton"),
                  ),
                  const SizedBox(width: 10),

                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF2563EB),
                      side: const BorderSide(color: Color(0xFF2563EB)),
                      fixedSize: const Size(130, 45),
                    ),
                    child: const Text("Outlined"),
                  ),

                  const SizedBox(width: 10),
                ],
              ),
            ),
            Container(
              height: 200,
              width: 200,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(100),
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(37, 99, 235, 1),
                border: Border.all(
                  width: 5,
                  color: const Color.fromRGBO(37, 99, 235, 1),
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                //shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Colors.deepPurpleAccent,
                    const Color.fromRGBO(37, 99, 235, 1),
                  ],
                ),
              ),
              child: Text("its body"),
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: Card(
                margin: EdgeInsets.all(5),
                color: const Color.fromARGB(255, 82, 34, 255),
                shadowColor: Colors.deepPurpleAccent,
                elevation: 20,
                shape: BeveledRectangleBorder(),
                child: Text("Hello card"),
              ),
            ),
            Image.asset('assets/images/aa.jpg'),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        foregroundColor: const Color.fromARGB(255, 225, 229, 238),
        shape: BeveledRectangleBorder(),
        backgroundColor: Color.fromRGBO(37, 99, 235, 1),
        child: Icon(Icons.add),
      ),
    );
  }
}