void main() {
  const String input = "{a[a(bv)a]}";
  final bool result = balance(input);
  
  print(result);
}

bool balance(String str) {
  final List<String> stack = [];
  
  for (var char in str.split("")) {
    switch (char) {
      case "(":
        stack.add(")");
      case "[":
        if (stack.isNotEmpty && stack.last == ')')
          return false;
        stack.add("]");
      case "{":
        if (stack.isNotEmpty && (stack.last != ")" || stack.last != "]"))
          return false;
        stack.add("}");
      case ")" || "}" || "]":
        if (stack.isEmpty || stack.removeLast() != char)
          return false;
      default:
        continue;
    }
  }
  return stack.isEmpty;
}