import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio_web/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mailto/mailto.dart';

class EmailSender extends StatefulWidget {
  const EmailSender({Key? key}) : super(key: key);

  @override
  State<EmailSender> createState() => _EmailSenderState();
}

class _EmailSenderState extends State<EmailSender> {
  List<String> attachments = [];

  final _subjectController = TextEditingController(text: '');

  final _bodyController = TextEditingController(
    text: '',
  );
  Future<void> launchMailto() async {
    final mailtoLink = Mailto(
      to: ['odapo138@gmail.com'],
      subject: _subjectController.text,
      body: _bodyController.text,
    );
    // Convert the Mailto instance into a string.
    // Use either Dart's string interpolation
    // or the toString() method.
    await launchUrl(Uri.parse('$mailtoLink'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Me'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _subjectController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Subject',
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _bodyController,
                  maxLines: null,
                  expands: true,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: const InputDecoration(
                      labelText: 'Body', border: OutlineInputBorder()),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () async {
                  await launchMailto();
                },
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding * 2,
                        vertical: defaultPadding),
                    backgroundColor: primaryColor),
                child: const Center(
                  child: Text(
                    "Send",
                    style: TextStyle(color: darkColor),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}