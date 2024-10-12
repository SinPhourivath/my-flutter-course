void main() {
  // List of student scores
  const List<int> scores = [45, 67, 82, 49, 51, 78, 92, 30];

  // You code
  final List<int> passScores = [];

  scores.forEach((score) {
    if (score >= 50) {
      passScores.add(score);
    }
  });

  print(passScores);
  print("${passScores.length} students passed");
 
}