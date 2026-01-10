/// Real-World Example: E-Commerce Order Processing System
/// This example demonstrates advanced Dart patterns in a practical scenario

void main() {
  print('=== E-Commerce Order Processing System ===\n');

  // Process various orders
  processOrder(Order('ORD-001', 'Alice', 150.0, OrderStatus.pending, ['Laptop', 'Mouse']));
  processOrder(Order('ORD-002', 'Bob', 45.0, OrderStatus.shipped, ['Book']));
  processOrder(Order('ORD-003', 'Charlie', 250.0, OrderStatus.delivered, ['Phone', 'Case', 'Charger']));
  processOrder(Order('ORD-004', 'Diana', 15.0, OrderStatus.cancelled, ['Pen']));
}

void processOrder(Order order) {
  print('\n--- Processing Order ${order.id} ---');

  // 1. Object Pattern Matching - Extract order details
  if (order case Order(id: var orderId, customer: var customer, total: var amount)) {
    print('Customer: $customer | Order ID: $orderId');

    // 2. Relational Patterns - Calculate shipping cost based on order total
    var shippingCost = switch (amount) {
      < 50 => 10.0,
      >= 50 && < 100 => 5.0,
      >= 100 => 0.0, // Free shipping
      _ => 10.0,
    };
    print('Subtotal: \$${amount.toStringAsFixed(2)}');
    print('Shipping: \$${shippingCost.toStringAsFixed(2)}');

    // 3. Records and Destructuring - Calculate final price with tax
    var (finalPrice, tax) = calculatePriceWithTax(amount + shippingCost);
    print('Tax: \$${tax.toStringAsFixed(2)}');
    print('Total: \$${finalPrice.toStringAsFixed(2)}');
  }

  // 4. Switch Expressions - Determine action based on order status
  var action = switch (order.status) {
    OrderStatus.pending => 'Awaiting payment confirmation',
    OrderStatus.processing => 'Preparing items for shipment',
    OrderStatus.shipped => 'Out for delivery',
    OrderStatus.delivered => 'Order completed',
    OrderStatus.cancelled => 'Refund processing',
  };
  print('Status: ${order.status.name.toUpperCase()} - $action');

  // 5. List Patterns - Analyze items in the order
  switch (order.items) {
    case []:
      print('⚠️ Warning: Empty order');
    case [var singleItem]:
      print('📦 Single item order: $singleItem');
    case [var first, var second]:
      print('📦 Two items: $first and $second');
    case [var first, var second, var third, ...]:
      print('📦 Multiple items: $first, $second, $third, and more');
  }

  // 6. Logical Patterns - Determine priority shipping eligibility
  var isPriorityEligible = switch ((order.total, order.items.length)) {
    (>= 100, >= 2) => true,
    (>= 200, _) => true,
    (_, >= 5) => true,
    _ => false,
  };

  if (isPriorityEligible) {
    print('✅ Eligible for priority processing');
  }

  // 7. Combined Patterns - Customer tier and special handling
  var customerTier = getCustomerTier(order.customer, order.total);
  var (tier, discount) = customerTier;
  print('Customer Tier: $tier (${discount}% discount on next order)');
}

// Helper function using records
(double, double) calculatePriceWithTax(double amount) {
  const taxRate = 0.08; // 8% tax
  var tax = amount * taxRate;
  var total = amount + tax;
  return (total, tax);
}

// Helper function demonstrating pattern matching with business logic
(String, int) getCustomerTier(String customer, double orderTotal) {
  // In a real app, this would check customer history from a database
  return switch (orderTotal) {
    >= 200 => ('GOLD', 15),
    >= 100 => ('SILVER', 10),
    >= 50 => ('BRONZE', 5),
    _ => ('STANDARD', 0),
  };
}

// Order status enum
enum OrderStatus {
  pending,
  processing,
  shipped,
  delivered,
  cancelled,
}

// Order class
class Order {
  final String id;
  final String customer;
  final double total;
  final OrderStatus status;
  final List<String> items;

  Order(this.id, this.customer, this.total, this.status, this.items);
}
