# Dart OOP Exercises - Complete Documentation

This repository contains implementations of 4 Dart Object-Oriented Programming exercises with complete UML diagrams and documentation.

## 📚 Exercises Overview

### EX-1: Employee Class System
Implementation of an employee management system with salary computation based on experience and skills.

- ✅ **Implementation**: [`EX-1.dart`](./EX-1.dart)
- 📊 **UML Diagram**: [`EX-1-UML.md`](./EX-1-UML.md)

**Key Features:**
- Private attributes with getters
- Address class for employee location
- Named constructors (mobileDeveloper, webDeveloper)
- Salary computation with experience and skill bonuses
- Skill enum (FLUTTER, DART, OTHER)

---

### EX-2: Bank System
Complete banking system with account management and transaction handling.

- ✅ **Implementation**: [`EX-2.dart`](./EX-2.dart)
- 📊 **UML Diagram**: [`EX-2-UML.md`](./EX-2-UML.md) ⭐ *Required*

**Key Features:**
- BankAccount class with credit/withdraw operations
- Bank class managing multiple accounts
- Unique account ID validation
- Exception handling for insufficient funds
- **Composition relationship** between Bank and BankAccount

---

### EX-3: Custom Duration Class
Immutable duration class with operator overloading, similar to Dart's built-in Duration.

- ✅ **Implementation**: [`EX-3.dart`](./EX-3.dart)
- 📊 **UML Diagram**: [`EX-3-UML.md`](./EX-3-UML.md)

**Key Features:**
- Immutable design pattern
- Named constructors (fromHours, fromMinutes, fromSeconds)
- Operator overloading (>, +, -)
- Validation (duration cannot be negative)
- Human-readable toString() output

---

### EX-4: Shop Management System
Online shop system with products, orders, and delivery management.

- ✅ **Implementation**: [`EX-4.dart`](./EX-4.dart)
- 📊 **UML Diagram**: [`EX-4-UML.md`](./EX-4-UML.md) ⭐ *Required*

**Key Features:**
- Product catalog management
- Two order types: Delivery and Pickup (named constructors)
- OrderItem tracking with quantity
- Automatic delivery fee calculation ($5 for delivery orders)
- Smart duplicate product handling
- DeliveryType enum

---

## 🎯 Quick Start

### Running the Exercises

```bash
# Navigate to the directory
cd "2 - START CODE"

# Run individual exercises
dart run EX-1.dart
dart run EX-2.dart
dart run EX-3.dart
dart run EX-4.dart
```

### Viewing UML Diagrams

All UML diagrams are created using Mermaid syntax and will render automatically on:
- ✅ GitHub
- ✅ GitLab
- ✅ VS Code (with Mermaid extension)
- ✅ Most modern Markdown viewers

Simply open the `*-UML.md` files to view the diagrams with full documentation.

---

## 📊 UML Diagrams Summary

### EX-1: Employee System
- **Classes**: Employee, Address, Skill (enum)
- **Relationships**: Composition (Employee has Address), Association (Employee uses Skills)

### EX-2: Bank System ⭐
- **Classes**: Bank, BankAccount
- **Relationships**: **Composition** (Bank owns BankAccounts)
- **Multiplicity**: 1 Bank → 0..* BankAccounts

### EX-3: Duration Class
- **Classes**: MyDuration
- **Key Features**: Operator overloading, immutability, validation

### EX-4: Shop Management ⭐
- **Classes**: Shop, Product, Order, OrderItem, Address, DeliveryType (enum)
- **Relationships**: 
  - Composition: Shop → Product, Order → OrderItem
  - Aggregation: Shop → Order
  - Association: Order → Address, OrderItem → Product

---

## 🔑 Key Dart Concepts Demonstrated

### 1. Encapsulation
```dart
class Employee {
  final String _name;  // Private field
  String get name => _name;  // Public getter
}
```

### 2. Named Constructors
```dart
Employee.mobileDeveloper(String name, ...) 
  : _skills = [Skill.FLUTTER, Skill.DART];

Order.delivery({required String customerId, required Address address});
Order.pickup({required String customerId});
```

### 3. Immutability
```dart
class Product {
  final String _name;  // Cannot be changed
  final double _price;
  const Product({...});  // Const constructor
}
```

### 4. Operator Overloading
```dart
MyDuration operator +(MyDuration other) {
  return MyDuration._(_milliseconds + other._milliseconds);
}
```

### 5. Enums
```dart
enum Skill { FLUTTER, DART, OTHER }
enum DeliveryType { DELIVERY, PICKUP }
```

### 6. Exception Handling
```dart
void withdraw(double amount) {
  if (_balance - amount < 0) {
    throw Exception('Insufficient balance!');
  }
}
```

### 7. Composition & Aggregation
- **Composition**: Strong ownership (Bank owns BankAccounts)
- **Aggregation**: Weak ownership (Shop manages Orders)

---

## 📖 Documentation Files

- **[IMPLEMENTATION_SUMMARY.md](./IMPLEMENTATION_SUMMARY.md)** - Overview of all implementations
- **[EX-1-UML.md](./EX-1-UML.md)** - Employee class diagram and explanation
- **[EX-2-UML.md](./EX-2-UML.md)** - Bank system diagram with relationship details ⭐
- **[EX-3-UML.md](./EX-3-UML.md)** - Duration class diagram and concepts
- **[EX-4-UML.md](./EX-4-UML.md)** - Shop management complete diagram ⭐

---

## 🎓 Learning Objectives Achieved

### Exercise 1: Employee Management
✅ Private fields with getters  
✅ Named constructors  
✅ Composition (Employee has Address)  
✅ Enum usage  
✅ Business logic encapsulation  

### Exercise 2: Bank System
✅ Class relationships (Composition)  
✅ Exception handling  
✅ Validation logic  
✅ List management  
✅ **UML diagram creation**  

### Exercise 3: Custom Duration
✅ Immutability concepts  
✅ Operator overloading  
✅ Private constructor pattern  
✅ Validation  
✅ Custom methods  

### Exercise 4: Shop Management
✅ Complex class relationships  
✅ Named constructors with different parameters  
✅ Nullable types (Address?)  
✅ Enum for type safety  
✅ **Complete UML diagram**  
✅ Total amount calculation  

---

## 🏆 Best Practices Implemented

1. **Encapsulation**: All fields private, access via getters
2. **Immutability**: Use `final` and `const` where possible
3. **Validation**: Validate inputs and throw meaningful exceptions
4. **Null Safety**: Proper use of nullable types (`Address?`)
5. **Type Safety**: Use enums instead of strings
6. **Unmodifiable Collections**: Return `List.unmodifiable()` to prevent external modification
7. **Clear Naming**: Descriptive variable and method names
8. **Documentation**: Comments explaining complex logic
9. **Testing**: Each main() includes comprehensive test cases

---

## 📝 Notes

- All UML diagrams use **Mermaid syntax** for universal compatibility
- Diagrams will render on GitHub, GitLab, and most Markdown viewers
- Each UML file includes detailed explanations of relationships and design decisions
- All code follows Dart best practices and style guidelines
- Exercises demonstrate progression from basic OOP to complex systems

---

## 🤝 Contributing

These exercises are part of a Dart/Flutter learning curriculum. Feel free to:
- Add additional test cases
- Improve documentation
- Suggest optimizations
- Create additional exercises

---

## 📧 Questions?

Review the individual UML diagram files for detailed explanations of:
- Class relationships
- Design decisions
- Usage examples
- Best practices

**Happy Coding! 🚀**
