

import 'dart:math';

import '../data/models/quote.dart';
import '../screens/random_quotes_card.dart';

class RandomQuote {
  static const List<Quote> quotes = [
    Quote(
      text: 'The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.',
      author: 'Helen Keller',
    ),
    Quote(
      text: 'The only way to do great work is to love what you do.',
      author: 'Steve Jobs',
    ),
    Quote(
      text: 'If you can dream it, you can do it.',
      author: 'Walt Disney',
    ),
    Quote(
      text: 'The future belongs to those who believe in the beauty of their dreams.',
      author: 'Eleanor Roosevelt',
    ),
    Quote(
      text: 'The only limit to our realization of tomorrow will be our doubts of today.',
      author: 'Franklin D. Roosevelt',
    ),
  ];

  static int getQuotesLength() {
    return quotes.length;
  }

  static RandomQuoteCard getRandomQuoteCard() {
    int index = Random().nextInt(quotes.length);
    return RandomQuoteCard(quote: quotes[index], onLike: () => null, onSkip: () => null,);
  }
}