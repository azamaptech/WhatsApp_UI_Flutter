import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            centerTitle: false,
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                ),
              ],
            ),
            actions: [
              const Icon(Icons.search),
              SizedBox(width: 10),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: '1',
                          child: Text('New Group'),
                        ),
                        const PopupMenuItem(
                          value: '2',
                          child: Text('Setting'),
                        ),
                        const PopupMenuItem(
                          value: '3',
                          child: Text('LogOut'),
                        ),
                      ]),
              SizedBox(width: 10),
            ],
            title: const Text('WhatsApp'),
          ),
          body: TabBarView(
            children: [
              Text('Camera'),
              ListView.builder(
                itemCount: 1000,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: Text('Syed'),
                    subtitle: Text('Hey Whatsapp bro '),
                    trailing: Text('5:50 PM'),
                  );
                },
              ),
              ListView.builder(
                itemCount: 1000,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 3,
                        ),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    ),
                    title: const Text('Robert'),
                    subtitle: const Text('20m ago'),
                  );
                },
              ),
              ListView.builder(
                  itemCount: 1000,
                  itemBuilder: (context, index) {
                    return ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                        title: Text('Asim'),
                        subtitle: Text(index / 2 == 0
                            ? 'you missed call'
                            : 'call time is 6:30'),
                        trailing: Icon(
                            index / 2 == 0 ? Icons.phone : Icons.video_call));
                  }),
            ],
          ),
        ));
  }
}
