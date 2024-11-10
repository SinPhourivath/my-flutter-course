class Tree {
  final String type;
  final double height;

  Tree(this.type, this.height);

  @override
  String toString() {
    return "($type, $height)";
  }
}

class Door {
  final String position;

  Door.centered() : this.position = "centered";
  Door.left() : this.position = "left-side";
  Door.right() : this.position = "right-side";

  @override
  String toString() {
    return "$position";
  }
}

class Window {
  final String position;
  final String color;

  Window({required this.position, required this.color});

  Window.centered(this.color) : this.position = "centered";
  Window.left(this.color) : this.position = "left-side";
  Window.right(this.color) : this.position = "right-side";

  @override
  String toString() {
    return "($position, $color)";
  }
}

class House {
  final String address;
  final int stories;
  final Door door;
  final List<List<Window>> windows;
  final List<Tree> trees = [];

  // Assume each floor has two windows by default.
  House(this.address, this.stories, this.door)
    : windows = List.generate(2, (index) => List.generate(stories, (index) => Window(position: "default position", color: "default color")));

  void addTree(Tree newTree) {
    trees.add(newTree);
  }

  @override
  String toString() {
    return "Address: $address, Stories: $stories, Door: $door, \nWindows: $windows, \nTrees: $trees";
  }
}

void main() {
  House h1 = House("A01", 2, Door.centered());
  // windows[floor][window]
  h1.windows[0][0] = Window.left('red');
  h1.windows[0][1] = Window.right('blue');
  h1.windows[1][0] = Window.left('brown');
  h1.windows[1][1] = Window.right('black');
  h1.addTree(Tree("Apple", 9));
  h1.addTree(Tree("Orage", 10));

  print(h1);
}
