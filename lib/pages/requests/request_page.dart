import 'package:flutter/material.dart';
import 'package:wsurge/core/titlebar/titlebar.dart';
import 'package:wsurge/pages/requests/request_section.dart';

class RequestPage extends StatelessWidget {
  static String name = "requests";

  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PageWindowTitleBar(
          title: Text("请求"),
          centerTitle: true,
          automaticallyImplyLeading: true,
        ),
        body: RequestSection()
    );
  }
}
