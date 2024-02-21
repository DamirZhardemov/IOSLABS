import 'dart:io';
import 'dart:math';

//LAB 1-Task 1

// double plus(double a, double b) {
//   return a + b;
// }

// double minus(double a, double b) {
//   return a - b;
// }

// double multiply(double a, double b) {
//   return a * b;
// }

// double divide(double a, double b) {
//   if (b == 0) {
//     return 0;
//   }
//   return a / b;
// }

// double power(double base, double exponent) {
//   return pow(base, exponent).toDouble();
  
// }

// double squareRoot(double value) {
//   return sqrt(value);
// }

// void main() {
//     print("Введите число:");
//     var num1 = double.parse(stdin.readLineSync()!);

//     print("Введите оператор (+, -, *, /, ^, sqrt):");
//     var operatorSymbol = stdin.readLineSync();

//     print("Введите число:");
//     var num2 = double.parse(stdin.readLineSync()!);

//     double result;

//     switch (operatorSymbol) {
//       case "+":
//         result = plus(num1, num2);
//         break;
//       case "-":
//         result = minus(num1, num2);
//         break;
//       case "*":
//         result = multiply(num1, num2);
//         break;
//       case "/":
//         result = divide(num1, num2);
//         break;
//       case "^":
//         result = power(num1, num2);
//         break;
//       case "sqrt":
//         result = squareRoot(num1);
//         break;
//       default:
//       print('Ошибка: Неверный оператор');
//       return null;
//     }

    
//     print("Результат: $result");
 
// }


//Task 2
void main() {
  print('1. Введите первую строку:');
  var line1 = stdin.readLineSync() ?? '';
  print('Введите вторую строку:');
  var line2 = stdin.readLineSync() ?? '';
  var combinedLine = line1 + line2;
  print('Результат объединения строк: $combinedLine');

  print('2. Введите строку для переворота:');
  var line3 = stdin.readLineSync() ?? '';
  var reversedLine = line3.split('').reversed.join('');
  print('Перевернутая строка: $reversedLine');


  print('3. Введите строку для подсчета символов:');
  var line4 = stdin.readLineSync() ?? '';
  var characterCount = line4.replaceAll(' ', '').length;
  print('Количество символов в строке (без пробелов): $characterCount');


  print('4. Введите строку:');
  var line5 = stdin.readLineSync() ?? '';

  print('Введите подстроку для поиска:');
  var substring = stdin.readLineSync() ?? '';

  var index = line5.indexOf(substring);
  if (index != -1) {
    print('Индекс первого вхождения подстроки: $index');
  } else {
    print('Подстрока не найдена в строке.');
  }



  
}

