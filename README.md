<div align="center">

# 🎯 Dart OOP Mastery Challenge

### *Level Up Your Object-Oriented Programming Skills!* 🚀

[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)

**4 Epic Exercises** | **Complete UML Diagrams** | **Production-Ready Code**

[🎮 Getting Started](#-quick-start) • [📚 Exercises](#-the-exercises) • [🎨 UML Diagrams](#-uml-diagrams-overview) • [💡 Concepts](#-key-concepts-you-will-master)

---

<br>

### 👨‍💻 Crafted By

**Loem Kimhour** ⚡  
`IDTB100357` 🎓

*Turning caffeine into code since 2022* ☕️💻

<br>

---

</div>

## 🎮 What's Inside?

Welcome to the ultimate Dart OOP playground! This repo contains 4 progressively challenging exercises that will transform you from a beginner to an OOP ninja! 🥷

Each exercise comes with:
- ✨ Clean, production-ready code
- 📊 Beautiful UML diagrams (renders on GitHub!)
- 🧪 Comprehensive test cases
- 📖 Detailed explanations

---

## 📚 The Exercises

**Build a salary calculator that actually makes sense!** 💰

Ever wondered how tech companies calculate salaries? Now you'll build your own system!

```dart
var developer = Employee.mobileDeveloper('Sarah', 40000, address, 5);
print(developer.computeSalary()); // $58,000! 🎉
```

**🎯 What you'll learn:**
- 🔒 Encapsulation with private fields
- 🏗️ Named constructors for different employee types
- 💵 Complex salary calculation algorithms
- 📍 Composition with Address class

**📦 Files:** [`EX-1.dart`](./EX-1.dart) • [`UML Diagram`](./EX-1-UML.md)

<details>
<summary>🎨 Features Preview</summary>

- ✅ Private attributes with getters
- ✅ `mobileDeveloper` & `webDeveloper` constructors
- ✅ Skill-based bonuses (Flutter: +$5k, Dart: +$3k)
- ✅ Experience multiplier ($2k per year)
- ✅ Type-safe Skill enum

</details>

---

### 🏦 Exercise 2: Banking Empire Builder

**Create a full-featured banking system!** 🏦💳

Build the next generation of digital banking with accounts, transactions, and bullet-proof validation!

```dart
Bank cadt = Bank(name: "CADT Bank");
var account = cadt.createAccount(100, 'Ronan');
account.credit(1000);
account.withdraw(500); // Secure transactions! 🔐
```

**🎯 What you'll master:**
- 🏗️ Composition relationships (Bank owns Accounts)
- 🚨 Exception handling for edge cases
- 🔐 Unique ID validation
- 💼 Real-world financial logic

**📦 Files:** [`EX-2.dart`](./EX-2.dart) • [`UML Diagram ⭐`](./EX-2-UML.md)

<details>
<summary>🎨 Features Preview</summary>

- ✅ BankAccount with credit/withdraw
- ✅ Automatic balance validation
- ✅ Unique account ID enforcement
- ✅ Exception handling for safety
- ✅ Composition pattern mastery

</details>

---

### ⏱️ Exercise 3: Time Wizard

**Master operator overloading like a pro!** ⚡🪄

Create your own Duration class that feels magical to use!

```dart
var workday = MyDuration.fromHours(8);
var lunch = MyDuration.fromMinutes(60);
var actualWork = workday - lunch; // Mind = Blown! 🤯
```

**🎯 What you'll discover:**
- 🔮 Operator overloading (+, -, >)
- 🔒 Immutability concepts
- 🏭 Private constructor pattern
- ✨ Fluent API design

**📦 Files:** [`EX-3.dart`](./EX-3.dart) • [`UML Diagram`](./EX-3-UML.md)

<details>
<summary>🎨 Features Preview</summary>

- ✅ Immutable by design
- ✅ Custom operators (>, +, -)
- ✅ Multiple named constructors
- ✅ Auto-validation (no negatives!)
- ✅ Beautiful toString() format

</details>

---

### 🛍️ Exercise 4: E-Commerce Commander

**Build the next Amazon!** 🛒📦

Create a complete online shop with products, orders, delivery tracking, and smart total calculations!

```dart
var order = Order.delivery(customerId: "VIP001", address: userAddress);
order.addItem(laptop, 2);
order.addItem(mouse, 5);
print(order.getTotalAmount()); // Auto-calculates everything! 💸
```

**🎯 What you'll conquer:**
- 🏗️ Complex multi-class systems
- 🚚 Multiple delivery types
- 🧮 Smart total calculation
- 🔄 Object relationship mastery

**📦 Files:** [`EX-4.dart`](./EX-4.dart) • [`UML Diagram ⭐`](./EX-4-UML.md)

<details>
<summary>🎨 Features Preview</summary>

- ✅ Product catalog system
- ✅ Delivery vs Pickup orders
- ✅ Smart duplicate item handling
- ✅ Auto delivery fee ($5)
- ✅ Complete order tracking

</details>

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

## 🚀 Quick Start

### Prerequisites

```bash
# Make sure you have Dart installed
dart --version  # Should be 2.12.0 or higher
```

### 🎮 Run the Exercises

```bash
# Clone this awesome repo
git clone https://github.com/LK-Hour/Flutter-W2-practice-Dart-OOP.git
cd "Flutter-W2-practice-Dart-OOP/2 - START CODE"

# Run any exercise
dart run EX-1.dart  # 🏢 Employee System
dart run EX-2.dart  # 🏦 Banking Empire
dart run EX-3.dart  # ⏱️ Time Wizard
dart run EX-4.dart  # 🛍️ E-Commerce
```

### 📊 View the Magic (UML Diagrams)

Our UML diagrams are built with **Mermaid** and render beautifully on:

- ✅ **GitHub** (you're looking at one right now!)
- ✅ **GitLab**
- ✅ **VS Code** (with [Mermaid extension](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid))
- ✅ **Any modern Markdown viewer**

Just open any `*-UML.md` file and enjoy the visual feast! 🎨

---

## 🎨 UML Diagrams Overview

<table>
<tr>
<td width="50%">

### 🏢 Employee System
**Classes:** `Employee` • `Address` • `Skill`

**Relationships:**
- 💎 Composition (Employee → Address)
- 🔗 Association (Employee → Skills)

[📊 View Diagram](./EX-1-UML.md)

</td>
<td width="50%">

### 🏦 Bank System ⭐
**Classes:** `Bank` • `BankAccount`

**Relationships:**
- 💎 **Composition** (Bank owns Accounts)
- 📊 Multiplicity: `1 → 0..*`

[📊 View Diagram](./EX-2-UML.md)

</td>
</tr>
<tr>
<td width="50%">

### ⏱️ Duration Class
**Classes:** `MyDuration`

**Features:**
- ⚡ Operator overloading
- 🔒 Immutability
- ✅ Validation

[📊 View Diagram](./EX-3-UML.md)

</td>
<td width="50%">

### 🛍️ Shop System ⭐
**Classes:** `Shop` • `Product` • `Order` • `OrderItem`

**Relationships:**
- 💎 Composition (Shop → Product)
- 🔗 Aggregation (Shop → Order)
- 🔗 Association (Order → Address)

[📊 View Diagram](./EX-4-UML.md)

</td>
</tr>
</table>

---

## 💡 Key Concepts You will Master

<div align="center">

### 🎓 From Zero to Hero in 4 Exercises!

</div>

### 🔒 1. Encapsulation - Keep Your Secrets Safe!
```dart
class Employee {
  final String _name;  // Private field
  String get name => _name;  // Public getter
}
```

### 🏭 2. Named Constructors - Build Objects Like a Pro!
```dart
Employee.mobileDeveloper(String name, ...) 
  : _skills = [Skill.FLUTTER, Skill.DART];

Order.delivery({required String customerId, required Address address});
Order.pickup({required String customerId});
```

### 🔐 3. Immutability - Once Set, Never Forget!
```dart
class Product {
  final String _name;  // Cannot be changed
  final double _price;
  const Product({...});  // Const constructor
}
```

### ⚡ 4. Operator Overloading - Make Your Classes Feel Native!
```dart
MyDuration operator +(MyDuration other) {
  return MyDuration._(_milliseconds + other._milliseconds);
}
```

### 🎯 5. Enums - Type Safety FTW!
```dart
enum Skill { FLUTTER, DART, OTHER }
enum DeliveryType { DELIVERY, PICKUP }
```

### 🚨 6. Exception Handling - Fail Gracefully!
```dart
void withdraw(double amount) {
  if (_balance - amount < 0) {
    throw Exception('Insufficient balance!');
  }
}
```

### 💎 7. Composition & Aggregation - Master Object Relationships!

| Type | Symbol | Meaning | Example |
|------|--------|---------|---------|
| **Composition** | 💎 | Strong ownership | Bank owns BankAccounts |
| **Aggregation** | 🔗 | Weak ownership | Shop manages Orders |
| **Association** | ➡️ | Uses/References | Order uses Product |

---

## 📚 Complete Documentation

<div align="center">

| Document | Description | Status |
|----------|-------------|--------|
| 📄 [**IMPLEMENTATION_SUMMARY.md**](./IMPLEMENTATION_SUMMARY.md) | Complete overview of all exercises | ✅ Ready |
| 🏢 [**EX-1-UML.md**](./EX-1-UML.md) | Employee system architecture | ✅ Ready |
| 🏦 [**EX-2-UML.md**](./EX-2-UML.md) | Banking system with relationships | ⭐ Featured |
| ⏱️ [**EX-3-UML.md**](./EX-3-UML.md) | Duration class patterns | ✅ Ready |
| 🛍️ [**EX-4-UML.md**](./EX-4-UML.md) | E-commerce system blueprint | ⭐ Featured |

</div>

---

## 🎓 Skills Unlocked

<table>
<tr>
<td width="50%">

### 🏢 Exercise 1 Achievements
- [x] 🔒 Private fields & getters
- [x] 🏭 Named constructors
- [x] 💎 Composition pattern
- [x] 🎯 Enum mastery
- [x] 💼 Business logic encapsulation

</td>
<td width="50%">

### 🏦 Exercise 2 Achievements
- [x] 💎 **Composition relationships**
- [x] 🚨 Exception handling
- [x] ✅ Validation logic
- [x] 📋 List management
- [x] 📊 **UML diagram design**

</td>
</tr>
<tr>
<td width="50%">

### ⏱️ Exercise 3 Achievements
- [x] 🔒 Immutability concepts
- [x] ⚡ Operator overloading
- [x] 🏭 Private constructor pattern
- [x] ✅ Input validation
- [x] 🎨 Custom methods

</td>
<td width="50%">

### 🛍️ Exercise 4 Achievements
- [x] 🕸️ Complex relationships
- [x] 🏭 Multiple constructors
- [x] ❓ Nullable types (`Address?`)
- [x] 🎯 Type-safe enums
- [x] 📊 **Complete system design**
- [x] 🧮 Smart calculations

</td>
</tr>
</table>  

---

## 🏆 Pro Tips & Best Practices

<details open>
<summary><b>🎯 Click to reveal the secret sauce!</b></summary>

<br>

| Practice | Why It Matters | Example |
|----------|----------------|---------|
| 🔒 **Encapsulation** | Keep data safe | All fields private, public getters |
| 🧊 **Immutability** | Prevent bugs | Use `final` and `const` |
| ✅ **Validation** | Fail fast | Throw exceptions early |
| 🛡️ **Null Safety** | No more null crashes | Use `?` for nullable types |
| 🎯 **Type Safety** | Catch errors at compile time | Enums > Strings |
| 🔐 **Unmodifiable Lists** | Protect your data | `List.unmodifiable()` |
| 📝 **Clear Naming** | Code = documentation | `calculateTotalSalary()` |
| 🧪 **Testing** | Confidence in changes | Every `main()` has tests |

</details>

---

## 📝 Technical Notes

<details>
<summary><b>🔧 Implementation Details</b></summary>

<br>

- 🎨 **UML Diagrams**: Built with Mermaid syntax for universal compatibility
- 🖥️ **Rendering**: Works on GitHub, GitLab, VS Code, and most Markdown viewers
- 📖 **Documentation**: Every UML file has detailed relationship explanations
- ✨ **Code Quality**: Follows official Dart style guide
- 📈 **Difficulty**: Progressive complexity from basic to advanced OOP

</details>

---

## 🤝 Contributing

<div align="center">

**Love this project? Want to make it even better?** 🌟

We welcome contributions! Whether it's:
- 🧪 Adding more test cases
- 📚 Improving documentation
- ⚡ Suggesting optimizations
- 🎨 Creating new exercises
- 🐛 Fixing bugs

[Open an Issue](../../issues) • [Submit a PR](../../pulls)

</div>

---

## 🌟 Show Your Support

<div align="center">

If this helped you level up your Dart skills, give it a ⭐!

**Star** ⭐ • **Fork** 🍴 • **Share** 📤

---

### 📧 Questions or Feedback?

Check out the [UML diagrams](./EX-1-UML.md) for detailed explanations, or [open an issue](../../issues)!

<br>

**Built with ❤️ for the Dart & Flutter Community**

---

### 🧑‍💻 Author

<table>
<tr>
<td align="center" width="100%">
<img src="https://img.shields.io/badge/Student-Loem%20Kimhour-blue?style=for-the-badge&logo=google-scholar&logoColor=white" alt="Student Badge"/>
<br><br>
<b>Loem Kimhour</b>
<br>
<code>IDTB100357</code>
<br><br>
<i>🚀 Flutter Developer | 💡 OOP Enthusiast | ⚡ Code Craftsman</i>
<br><br>
<a href="https://github.com/LK-Hour">
<img src="https://img.shields.io/badge/GitHub-LK--Hour-181717?style=flat-square&logo=github" alt="GitHub"/>
</a>
</td>
</tr>
</table>

---

🚀 **Happy Coding!** 🚀

<br>

[![Made with Dart](https://img.shields.io/badge/Made%20with-Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Open Source](https://img.shields.io/badge/Open%20Source-%E2%9D%A4-red?style=for-the-badge)](https://opensource.org)

</div>
