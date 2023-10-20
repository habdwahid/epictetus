import 'package:epictetus/detail_screen.dart';
import 'package:epictetus/model/posts.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, i) {
        final Posts post = postLists[i];

        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DetailScreen(post: post);
              },
            ),
          ),
          child: Card(
            margin: const EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.asset(
                      post.imgAsset,
                      alignment: Alignment.center,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12.0, top: 20.0),
                  child: Text(
                    '${post.category} • ${post.createdAt}',
                    style: const TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.6),
                      fontSize: 14.0,
                    ),
                  ),
                ),
                Text(
                  post.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 20.0,
                    top: 10.0,
                  ),
                  child: Text(
                    post.body,
                    style: const TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.6),
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Image.asset(
                        post.authorImgAsset,
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                        height: 50.0,
                        width: 50.0,
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          post.author,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          post.authorRole,
                          style: const TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.6),
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
      itemCount: postLists.length,
      separatorBuilder: (context, index) => const Divider(
        color: Color.fromRGBO(255, 255, 255, 0.1),
        endIndent: 16.0,
        height: 34.0,
        indent: 16.0,
        thickness: 1.5,
      ),
    );
  }
}
