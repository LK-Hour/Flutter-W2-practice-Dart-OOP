// Shop Management System

// Enum for delivery types
enum DeliveryType { DELIVERY, PICKUP }

// Product class
class Product {
  final String _name;
  final double _price;

  const Product({required String name, required double price})
    : _name = name,
      _price = price;

  // Getters
  String get name => _name;
  double get price => _price;

  @override
  String toString() => '$_name - \$$_price';
}

// Address class for delivery
class Address {
  final String street;
  final String city;
  final String zipCode;

  const Address({
    required this.street,
    required this.city,
    required this.zipCode,
  });

  @override
  String toString() => '$street, $city $zipCode';
}

// Order item to track quantity
class OrderItem {
  final Product _product;
  final int _quantity;

  OrderItem({required Product product, required int quantity})
    : _product = product,
      _quantity = quantity {
    if (_quantity <= 0) {
      throw Exception('Quantity must be positive!');
    }
  }

  // Getters
  Product get product => _product;
  int get quantity => _quantity;

  // Calculate total for this item
  double get total => _product.price * _quantity;

  @override
  String toString() =>
      '${_product.name} x $_quantity = \$${total.toStringAsFixed(2)}';
}

// Order class
class Order {
  final String _customerId;
  final List<OrderItem> _items = [];
  final DeliveryType _deliveryType;
  final Address? _deliveryAddress;

  // Constructor for delivery orders
  Order.delivery({required String customerId, required Address address})
    : _customerId = customerId,
      _deliveryType = DeliveryType.DELIVERY,
      _deliveryAddress = address;

  // Constructor for pickup orders
  Order.pickup({required String customerId})
    : _customerId = customerId,
      _deliveryType = DeliveryType.PICKUP,
      _deliveryAddress = null;

  // Getters
  String get customerId => _customerId;
  DeliveryType get deliveryType => _deliveryType;
  Address? get deliveryAddress => _deliveryAddress;
  List<OrderItem> get items => List.unmodifiable(_items);

  // Add item to order
  void addItem(Product product, int quantity) {
    // Check if product already exists in the order
    bool found = false;
    for (int i = 0; i < _items.length; i++) {
      if (_items[i].product.name == product.name) {
        // Update quantity by creating a new OrderItem
        _items[i] = OrderItem(
          product: product,
          quantity: _items[i].quantity + quantity,
        );
        found = true;
        break;
      }
    }

    if (!found) {
      _items.add(OrderItem(product: product, quantity: quantity));
    }
  }

  // Remove item from order
  void removeItem(Product product) {
    _items.removeWhere((item) => item.product.name == product.name);
  }

  // Calculate total amount
  double getTotalAmount() {
    double total = 0;
    for (var item in _items) {
      total += item.total;
    }

    // Add delivery fee if it's a delivery order
    if (_deliveryType == DeliveryType.DELIVERY) {
      total += 5.0; // $5 delivery fee
    }

    return total;
  }

  @override
  String toString() {
    StringBuffer sb = StringBuffer();
    sb.writeln('Order for Customer: $_customerId');
    sb.writeln('Delivery Type: ${_deliveryType.name}');

    if (_deliveryType == DeliveryType.DELIVERY && _deliveryAddress != null) {
      sb.writeln('Delivery Address: $_deliveryAddress');
    }

    sb.writeln('\nItems:');
    for (var item in _items) {
      sb.writeln('  $item');
    }

    if (_deliveryType == DeliveryType.DELIVERY) {
      sb.writeln('  Delivery Fee: \$5.00');
    }

    sb.writeln('\nTotal Amount: \$${getTotalAmount().toStringAsFixed(2)}');
    return sb.toString();
  }
}

// Shop class
class Shop {
  final String _name;
  final List<Product> _products = [];
  final List<Order> _orders = [];

  Shop({required String name}) : _name = name;

  // Getters
  String get name => _name;
  List<Product> get products => List.unmodifiable(_products);
  List<Order> get orders => List.unmodifiable(_orders);

  // Add product to shop
  void addProduct(Product product) {
    _products.add(product);
  }

  // Find product by name
  Product? findProduct(String name) {
    for (var product in _products) {
      if (product.name == name) {
        return product;
      }
    }
    return null;
  }

  // Add order to shop
  void addOrder(Order order) {
    _orders.add(order);
  }

  @override
  String toString() {
    return 'Shop: $_name, Products: ${_products.length}, Orders: ${_orders.length}';
  }
}

void main() {
  // Create a shop
  Shop myShop = Shop(name: "CADT Online Shop");

  // Add products to the shop
  const laptop = Product(name: "Laptop", price: 999.99);
  const mouse = Product(name: "Mouse", price: 25.50);
  const keyboard = Product(name: "Keyboard", price: 75.00);
  const monitor = Product(name: "Monitor", price: 299.99);

  myShop.addProduct(laptop);
  myShop.addProduct(mouse);
  myShop.addProduct(keyboard);
  myShop.addProduct(monitor);

  print('${myShop}\n');
  print('Available Products:');
  for (var product in myShop.products) {
    print('  $product');
  }
  print('\n${"=" * 50}\n');

  // Create a delivery order
  const deliveryAddress = Address(
    street: "123 Main Street",
    city: "Phnom Penh",
    zipCode: "12000",
  );

  Order order1 = Order.delivery(
    customerId: "CUST001",
    address: deliveryAddress,
  );

  order1.addItem(laptop, 1);
  order1.addItem(mouse, 2);
  order1.addItem(keyboard, 1);

  myShop.addOrder(order1);

  print('Order 1 (Delivery):');
  print(order1);
  print('${"=" * 50}\n');

  // Create a pickup order
  Order order2 = Order.pickup(customerId: "CUST002");

  order2.addItem(monitor, 2);
  order2.addItem(keyboard, 1);

  myShop.addOrder(order2);

  print('Order 2 (Pickup):');
  print(order2);
  print('${"=" * 50}\n');

  // Test adding same product multiple times
  Order order3 = Order.delivery(
    customerId: "CUST003",
    address: const Address(
      street: "456 Oak Avenue",
      city: "Siem Reap",
      zipCode: "17000",
    ),
  );

  order3.addItem(mouse, 2);
  order3.addItem(mouse, 3); // Adding more of the same product
  order3.addItem(laptop, 1);

  myShop.addOrder(order3);

  print('Order 3 (Multiple same items):');
  print(order3);
  print('${"=" * 50}\n');

  // Print shop summary
  print('Shop Summary:');
  print(myShop);
  print(
    '\nTotal Revenue from all orders: \$${_calculateTotalRevenue(myShop).toStringAsFixed(2)}',
  );
}

// Helper function to calculate total revenue
double _calculateTotalRevenue(Shop shop) {
  double total = 0;
  for (var order in shop.orders) {
    total += order.getTotalAmount();
  }
  return total;
}
