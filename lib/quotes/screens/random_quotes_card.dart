import 'package:flutter/material.dart';

import '../data/models/quote.dart';


class RandomQuoteCard extends StatefulWidget {
  final Quote quote;
  final Function() onLike;
  final Function() onSkip;

  const RandomQuoteCard({
    super.key,
    required this.quote,
    required this.onLike,
    required this.onSkip,
  });

  @override
  State<RandomQuoteCard> createState() => _RandomQuoteCardState();
}

class _RandomQuoteCardState extends State<RandomQuoteCard> {
  
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.quote.text),
            Text(widget.quote.author),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.thumb_up),
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                    if (isLiked) {
                      widget.onLike();
                    } else {
                      widget.onSkip();
                    }
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    widget.onSkip();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


