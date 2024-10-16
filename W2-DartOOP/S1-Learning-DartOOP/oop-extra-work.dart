class Tree {
  String type;
  double height;

  Tree(this.type, this.height);

  @override
  String toString() {
    return "($type, $height)";
  }
}

class Door {
  String position;

  Door.centered() : this.position = "centered";
  Door.left() : this.position = "left-side";
  Door.right() : this.position = "right-side";

  @override
  String toString() {
    return "$position";
  }
}

class Window {
  String position;
  String color;

  Window.centered(this.color) : this.position = "centered";
  Window.left(this.color) : this.position = "left-side";
  Window.right(this.color) : this.position = "right-side";

  @override
  String toString() {
    return "($position, $color)";
  }
}

class House {
  String address;
  int stories;
  Door door;
  List<Window> windows;
  List<Tree> trees = [];

  House(this.address, this.stories, this.door) : windows = List.generate(stories, (index) => Window.centered("default color"));

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
  h1.windows[0] = Window.left('red');
  h1.windows[1] = Window.right('blue');
  h1.addTree(Tree("Apple", 9));
  h1.addTree(Tree("Orage", 10));

  print(h1);
}
