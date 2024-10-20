enum AccountType { Saving, Business, Salary}
enum Currency { Riel, Dollar}

class BankAccount {
  final int accountId;
  final String accountOwner;
  double _balance;
  final DateTime _createdAt;
  final AccountType accountType;
  final Currency currency;
  bool _isActive;

  BankAccount({required this.accountId, required this.accountOwner, required this.accountType, required this.currency})
    : _balance = 0,
      _createdAt = DateTime.now(),
      _isActive = true;

  double get balance => _balance;
  DateTime get createdAt => _createdAt;
  bool get isActive => _isActive;

  void credit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount > _balance) {
      throw Exception("Insufficient balance for withdrawal!");
    }
    _balance -= amount;
  }

  void deactivate() {
    if (_isActive) {
      _isActive = false;
      print("Account deativate successfully");
    } else {
      print("Account aleady deactived");
    }
  }

  String getAccountDetail() {
    return "ID: $accountId, Owner: $accountOwner, Account Type: $accountType, Account Currency: $currency, Status: $isActive";
  }
}

class Bank {
  final String name;
  
  static final Set<int> _existingAccountIds = {};

  Bank({required this.name});

  BankAccount createAccount({required int accountId, required String accountOwner, required AccountType accountType, required Currency currency}) {
    if (_isIdTaken(accountId)) {
      throw Exception('Account with ID $accountId already exists!');
    }
    _existingAccountIds.add(accountId);
    return BankAccount(accountId: accountId, accountOwner: accountOwner, accountType: accountType, currency: currency);
  }

  // Encapsulate maybe because only system has to know this
  // Static method for accessing static attribute?
  static bool _isIdTaken(int id) {
    return _existingAccountIds.contains(id);
  }
}
 
void main() {

  Bank myBank = Bank(name: "CADT Bank");
  BankAccount ronanAccount = myBank.createAccount(accountId: 100, accountOwner:  'Ronan', accountType: AccountType.Saving, currency: Currency.Dollar);

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
    myBank.createAccount(accountId: 100, accountOwner:  'Honlgy', accountType: AccountType.Saving, currency: Currency.Riel); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}
