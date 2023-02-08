import 'package:flutter/material.dart';

import '../../../core/colorApp.dart';
import '../../models/TopReated.dart';
import '../../models/moreLikeThis.dart';

class MoreLikeThiseDetiels extends StatelessWidget {
  Results results;
  MoreLikeThiseDetiels(this.results);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    color: ColorApp().itemRecommendColor.withOpacity(.30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: Image.network(
                              'https://image.tmdb.org/t/p/original${results.posterPath!}',
                              width: w * .26,
                              height: h * 0.14,
                              fit: BoxFit.cover,
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18,
                            ),
                            Text(
                              results.voteAverage.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            width: w * .26,
                            height: h / 30,

                            child: Text(
                              results.title!,
                              style: TextStyle(fontSize: 11, color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6.0),
                          child: Text(results.releaseDate??'',
                              style: TextStyle(fontSize: 8,color: Colors.white70,wordSpacing: 5)),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          Image.asset(
            'assets/images/bookmark.png',
          )
        ],
      ),
    );
  }
}