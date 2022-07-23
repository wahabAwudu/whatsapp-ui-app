import 'package:flutter/material.dart';
import 'package:new_app/colors.dart';
import 'package:new_app/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child:  ListView.builder(
                    shrinkWrap: true,
                    itemCount: chatInfo.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          InkWell(
                        onTap: () => {},
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: ListTile(
                            title: Text(
                              chatInfo[index]['name'].toString(),
                              style: const TextStyle(fontSize: 18),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                chatInfo[index]['message'].toString(),
                                style: const TextStyle(fontSize: 15),
                              ),
                            ),
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  chatInfo[index]['profilePic'].toString()),
                                  radius: 30,
                            ),
                            trailing: Text(
                              chatInfo[index]['time'].toString(),
                              style: const TextStyle(
                                  fontSize: 13, color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      const Divider(
              color: dividerColor,
              indent: 85,
            )
                        ],
                      );
                    }),
        );
  }
}
