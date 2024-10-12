import 'dart:io';

enum Direction { north, east, south, west }
 
void main() {
  // Initial position {7, 3} and facing north
  int x = 7;
  int y = 3;
  Direction direction = Direction.north;

  // Example instruction sequence
  const instructions = "RAALAL";

  // Process the instructions and get the final position and direction
  final List<String> instructionList = instructions.split("");

  instructionList.forEach((instruction) {
    switch (instruction) {
      case "R":
        direction = Direction.values[(direction.index + 1) % 4];
      case "L":
        direction = Direction.values[(direction.index + 3) % 4];
      case "A":
        switch (direction.name) {
          case "north":
            y += 1;
          case "east":
            x += 1;
          case "south":
            y -= 1;
          case "west":
            x -= 1;
        }
      default:
        print("Error. Unknown Instruction.");
        exit(1);
    }
  });

  // Print the final position and direction
  print("Final position: $x, $y ");
  print("Facing: ${direction.name} ");
}