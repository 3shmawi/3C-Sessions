import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> names = [
      'Ashmawi',
      'Ahmed',
    ];

    List<String> images = [
      'https://images.unsplash.com/photo-1586724220920-ab7eafeaf663?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1586724220920-ab7eafeaf663?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/100779215?v=4',
                        ),
                      ),
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 8,
                          child: Text(
                            '6',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Chats',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 15,
                    child: Icon(
                      Icons.camera_alt_sharp,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 15,
                    child: Icon(
                      Icons.edit,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        height: 38,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              size: 20,
                              color: Colors.grey,
                            ),
                            Text(
                              ' Search',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 95,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Column(
                            children: [
                              Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children: [
                                  CircleAvatar(
                                    radius: 28,
                                    backgroundImage: NetworkImage(
                                      images[0],
                                    ),
                                  ),
                                  if (index % 2 == 0)
                                    CircleAvatar(
                                      radius: 7.5,
                                      backgroundColor: Colors.white,
                                    ),
                                  if (index % 2 == 0)
                                    Padding(
                                      padding: const EdgeInsets.all(1),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.green,
                                        radius: 6,
                                      ),
                                    ),
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              SizedBox(
                                width: 65,
                                child: Text(
                                  names[index],
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          separatorBuilder: (context, index) => SizedBox(
                            width: 5,
                          ),
                          itemCount: names.length,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1586724220920-ab7eafeaf663?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                                  ),
                                ),
                                if (index % 2 == 0)
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.white,
                                  ),
                                if (index % 2 == 0)
                                  Padding(
                                    padding: const EdgeInsets.all(1),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.green,
                                      radius: 6.5,
                                    ),
                                  ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Mohamed Ashmawi',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black.withOpacity(.6),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Hello i\'m Mohamed ',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        Text(
                                          '${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}: PM',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[400]),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                        itemCount: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
