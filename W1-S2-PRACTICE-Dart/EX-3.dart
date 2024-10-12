void main() {
  // List of student scores
  List<int> scores = [45, 67, 82, 49, 51, 78, 92, 30];

  // You code
  List<int> passScores = [];

  scores.forEach((score) {
    if (score >= 50) {
      passScores.add(score);
    }
  });

  print(passScores);
  print("${passScores.length} students passed");
 
}