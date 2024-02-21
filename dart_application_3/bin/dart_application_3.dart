import 'dart:math';
//LAB 2-TASK 1
// class BankAccount {
//   final String accountNumber;
//   final String accountOwner;
//   double _balance;

//   BankAccount(this.accountNumber, this.accountOwner, double startingBalance)
//       : _balance = startingBalance;

//   void deposit(double amount) {
//     if (amount <= 0) {
//       print("Ошибка: Сумма для пополнения должна быть больше нуля.");
//       return;
//     }
//     _balance += amount;
//     print("Пополнение на сумму $amount выполнено успешно. Новый баланс: $_balance");
//   }

//   void withdraw(double amount) {
//     if (amount <= 0) {
//       print("Ошибка: Сумма для снятия должна быть больше нуля.");
//       return;
//     }
//     if (_balance >= amount) {
//       _balance -= amount;
//       print("Снятие суммы $amount выполнено успешно. Новый баланс: $_balance");
//     } else {
//       print("Ошибка: Недостаточно средств на счете. Сумма снятия превышает текущий баланс.");
//     }
//   }

//   double getBalance() {
//     return _balance;
//   }

//   void displayAccountInfo() {
//     print("Информация о счете:");
//     print("Номер счета: $accountNumber");
//     print("Владелец счета: $accountOwner");
//     print("Текущий баланс: $_balance");
//   }
// }

// void main() {
//   var account = BankAccount("123456789", "Дамир Жардемов", 1000.0);
//   account.deposit(500.0);
//   account.withdraw(200.0);
//   account.displayAccountInfo();
// }

class Book {
  final String title;
  final String author;
  final int year;
  final int pageCount;

  Book(this.title, this.author, this.year, this.pageCount);

  void displayInfo() {
    print('Название: $title');
    print('Автор: $author');
    print('Год издания: $year');
    print('Количество страниц: $pageCount');
    print('');
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Книга добавлена в библиотеку: ${book.title}');
  }

  void removeBook(Book book) {
    books.remove(book);
    print('Книга удалена из библиотеки: ${book.title}');
  }

  void displayAllBooks() {
    if (books.isEmpty) {
      print('Библиотека пуста.');
    } else {
      print('Книги в библиотеке:');
      for (var book in books) {
        book.displayInfo();
      }
    }
  }
}

void main() {
  var library = Library();

  var book1 = Book('Книга1', 'Автор1', 2000, 300);
  var book2 = Book('Книга2', 'Автор2', 2010, 250);
  var book3 = Book('Книга3', 'Автор3', 2020, 400);

  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);

  library.displayAllBooks();

  library.removeBook(book2);

  library.displayAllBooks();
}
