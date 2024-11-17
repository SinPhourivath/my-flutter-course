import 'package:learning/W6-S2-Practice/EX-4/model/joke_model.dart';

List<Joke> jokes = [
  Joke(
      title: "Why don't skeletons fight each other?",
      description: "Because they don't have the guts!"),
  Joke(
      title: "What did the ocean say to the beach?",
      description: "Nothing, it just waved."),
  Joke(
      title: "Why was the math book sad?",
      description: "Because it had too many problems."),
  Joke(
      title: "Why don't eggs tell jokes?",
      description: "Because they'd crack each other up."),
  Joke(
      title: "What did one wall say to the other?",
      description: "I'll meet you at the corner."),
  Joke(
      title: "Why don't some couples go to the gym?",
      description: "Because some relationships don't work out."),
  Joke(title: "What do you call fake spaghetti?", description: "An impasta!"),
  Joke(
      title: "Why can't your nose be 12 inches long?",
      description: "Because then it would be a foot!"),
  Joke(
      title: "What do you call cheese that's not yours?",
      description: "Nacho cheese!"),
  Joke(
      title: "Why don't oysters donate to charity?",
      description: "Because they are shellfish."),
  Joke(title: "What do you call a pile of cats?", description: "A meow-tain."),
  Joke(
      title: "Why did the scarecrow win an award?",
      description: "Because he was outstanding in his field."),
  Joke(
      title: "What did one plate say to the other?",
      description: "Lunch is on me."),
  Joke(title: "Why was the broom late?", description: "It swept in."),
  Joke(
      title: "How do cows stay up to date with current events?",
      description: "They read the moos-paper."),
  Joke(
      title: "Why did the golfer bring two pairs of pants?",
      description: "In case he got a hole in one."),
  Joke(
      title: "What did the grape do when it got stepped on?",
      description: "Nothing, it just let out a little wine.")
].asMap().entries.map((entry) { // Just making id increment itself
  int index = entry.key;
  Joke joke = entry.value;
  return Joke(
    id: (index + 1).toString(),
    title: joke.title,
    description: joke.description,
  );
}).toList();
