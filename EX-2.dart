class BankAccount {
  final int _accountId;
  final String _accountOwner;
  double _balance;

  BankAccount(this._accountId, this._accountOwner) : _balance = 0;

  // Getters
  int get accountId => _accountId;
  String get accountOwner => _accountOwner;
  String get balance => 'Balance: \$$_balance';

  // Method to add money to the account
  void credit(double amount) {
    if (amount <= 0) {
      throw Exception('Credit amount must be positive!');
    }
    _balance += amount;
  }

  // Method to withdraw money from the account
  void withdraw(double amount) {
    if (amount <= 0) {
      throw Exception('Withdrawal amount must be positive!');
    }
    if (_balance - amount < 0) {
      throw Exception('Insufficient balance for withdrawal!');
    }
    _balance -= amount;
  }

  @override
  String toString() =>
      'Account ID: $_accountId, Owner: $_accountOwner, Balance: \$$_balance';
}

class Bank {
  final String _name;
  final List<BankAccount> _accounts = [];

  Bank({required String name}) : _name = name;

  // Getter
  String get name => _name;
  List<BankAccount> get accounts => List.unmodifiable(_accounts);

  // Create a new bank account
  BankAccount createAccount(int accountId, String accountOwner) {
    // Check if account ID already exists
    for (var account in _accounts) {
      if (account.accountId == accountId) {
        throw Exception('Account with ID $accountId already exists!');
      }
    }

    // Create new account
    var newAccount = BankAccount(accountId, accountOwner);
    _accounts.add(newAccount);
    return newAccount;
  }

  // Find account by ID
  BankAccount? findAccountById(int accountId) {
    for (var account in _accounts) {
      if (account.accountId == accountId) {
        return account;
      }
    }
    return null;
  }

  @override
  String toString() => 'Bank: $_name, Total Accounts: ${_accounts.length}';
}

void main() {
  Bank myBank = Bank(name: "CADT Bank");
  BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

  print(ronanAccount.balance); // Balance: $0
  ronanAccount.credit(100);
  print(ronanAccount.balance); // Balance: $100
  ronanAccount.withdraw(50);
  print(ronanAccount.balance); // Balance: $50

  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAccount(100, 'Honlgy'); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }

  // Additional test
  print('\n${myBank}');
  var honglyAccount = myBank.createAccount(101, 'Honlgy');
  honglyAccount.credit(500);
  print("Hongly account ID: ${honglyAccount.accountId}");
  print(ronanAccount.balance);
}
