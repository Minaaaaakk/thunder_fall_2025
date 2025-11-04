import 'package:flutter/material.dart';
import 'package:session_12_flutter/postcard.dart';

class Project extends StatelessWidget {
  final List<Map<String, dynamic>> posts = [
    {'username': 'flutter_dev', 'caption': 'Миний анхны Flutter фийд!', 'imageUrl': 'https://plus.unsplash.com/premium_photo-1683977922495-3ab3ce7ba4e6?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=2200', 'avatarUrl': 'https://images.unsplash.com/photo-1728577740843-5f29c7586afe?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1760'},
    {'username': 'art_lover', 'caption': 'Энэ бол үнэхээр гоё UI.', 'imageUrl': 'https://images.unsplash.com/photo-1581287053822-fd7bf4f4bfec?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=2101', 'avatarUrl': 'https://images.unsplash.com/photo-1740252117070-7aa2955b25f8?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1760'},
    {'username': 'travel_bug', 'caption': 'Дараагийн аялал хаашаа вэ?', 'imageUrl': 'https://images.unsplash.com/photo-1500835556837-99ac94a94552?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1287', 'avatarUrl': 'https://plus.unsplash.com/premium_photo-1723028769916-a767a6b0f719?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1335'},
    {'username': 'foodie_ub', 'caption': 'Өнөөдөр шинэ хоол туршиж үзлээ.', 'imageUrl': 'https://images.unsplash.com/photo-1611464357429-a34ac648a5e9?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=2070', 'avatarUrl': 'https://images.unsplash.com/photo-1740252117027-4275d3f84385?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1760'},
  ];
  Future<List<Map<String, dynamic>>> fetchPosts() {
    return Future.delayed(Duration(seconds: 3), () {
      return posts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Feed')),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          final post = posts[index];
          return PostCard(postData: post);
        },
      ),
    );
  }
}
