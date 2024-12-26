import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/api/todos.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final details = [
    (
      title: 'Is it acceptable?',
      content: 'Yes. It adheres to the WAI-ARIA design pattern.',
    ),
    (
      title: 'Is it styled?',
      content:
          "Yes. It comes with default styles that matches the other components' aesthetic.",
    ),
    (
      title: 'Is it animated?',
      content:
          "Yes. It's animated by default, but you can disable it if you prefer.",
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getHttp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Title"),
      ),
      body: ShadAccordion<({String content, String title})>(
        children: details.map(
          (detail) => ShadAccordionItem(
            padding: EdgeInsets.all(20),
            value: detail,
            title: Text(
              detail.title,
              style: TextStyle(color: Colors.white),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                detail.content,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
