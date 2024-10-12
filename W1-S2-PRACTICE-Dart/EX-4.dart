void main() {
  // Map of pizza prices
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // Example order
  const order = ['margherita', 'pepperoni', 'pineapple'];

  // Your code
  double total = 0;
  order.forEach((item) {
    double? itemPrince = pizzaPrices[item];
    if (itemPrince != null)
      total += itemPrince;
    else
      print("$item pizza is not on the menu");
  });

  print("Total: \$${total.toInt() == total ? total.toInt() : total}");
}
