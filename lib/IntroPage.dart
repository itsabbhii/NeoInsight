import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final String markdownData = '''
  &nbsp;
# Welcome to NeoInsight


&nbsp;


**NeoInsight** is designed to offer undergraduate students an understanding of benign and malignant neoplasms of the oral cavity.  
 
&nbsp;

This app provides comprehensive information on the various types, symptoms, and treatments associated with oral neoplasms. As students, we created this app to simplify complex topics and help fellow students grasp these critical concepts with ease.  
 
&nbsp;

Whether you're revising for exams or seeking a quick reference, NeoInsight is your go-to resource for exploring oral pathology.
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height, // 👈 Ensures full-screen
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.purple.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: MarkdownBody(
              data: markdownData,
              selectable: true,
              styleSheet: MarkdownStyleSheet(
                h1: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
                p: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  height: 1.6,
                ),
                strong: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
