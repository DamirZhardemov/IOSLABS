import 'package:collection/collection.dart'; 

//LAB 3-TASK 1

// class Student {
//   final String firstName;
//   final String lastName;
//   final double averageGrade;

//   Student(this.firstName, this.lastName, this.averageGrade);

//   String get fullName => '$firstName $lastName';
// }

// class StudentJournal {
//   List<Student> students = [];

//   void addStudent(String firstName, String lastName, double averageGrade) {
//     final student = Student(firstName, lastName, averageGrade);
//     students.add(student);
//   }

//   void removeStudent(String firstName, String lastName) {
//     students.removeWhere((student) =>
//         student.firstName == firstName && student.lastName == lastName);
//   }

//   void displayStudents() {
//     print('Студенты в журнале:');
//     for (var student in students) {
//       print('Имя: ${student.fullName}, Средний балл: ${student.averageGrade}');
//     }
//   }

//   void listStudentsByDescendingGPA() {
//     students.sort((a, b) => b.averageGrade.compareTo(a.averageGrade));
//     print('Студенты, отсортированные по убыванию среднего балла:');
//     for (var student in students) {
//       print('Имя: ${student.fullName}, Средний балл: ${student.averageGrade}');
//     }
//   }

//   double averageGradeOfAllStudents() {
//     if (students.isEmpty) return 0.0;
//     final totalGrade =
//         students.map((student) => student.averageGrade).reduce((a, b) => a + b);
//     return totalGrade / students.length;
//   }

//   Student? studentWithHighestGPA() {
//     if (students.isEmpty) return null;
//     return students.reduce((a, b) =>
//         a.averageGrade > b.averageGrade ? a : b);
//   }
// }

// void main() {
//   final journal = StudentJournal();

//   journal.addStudent('Габа', 'Ата', 85.5);
//   journal.addStudent('Дамир', 'Жардемов', 90.2);
//   journal.addStudent('Санжар', 'Ораз', 78.9);

//   journal.displayStudents();
//   print('');

//   journal.removeStudent('Габа', 'Ата');
//   journal.displayStudents();
//   print('');

//   journal.listStudentsByDescendingGPA();
//   print('');

//   print('Средний балл всех студентов: ${journal.averageGradeOfAllStudents()}');

//   final highestGPAStudent = journal.studentWithHighestGPA();
//   if (highestGPAStudent != null) {
//     print('Студент с наивысшим средним баллом: ${highestGPAStudent.fullName}, Средний балл: ${highestGPAStudent.averageGrade}');
//   } else {
//     print('Студенты не найдены.');
//   }
// }

//TASK-2


class Task {
  final String title;
  final String description;
  bool isCompleted;

  Task(this.title, this.description, {this.isCompleted = false});
}

class ToDoList {
  List<Task> tasks = [];

  void addTask(String title, String description) {
    final task = Task(title, description);
    tasks.add(task);
  }

  void removeTask(String title) {
    tasks.removeWhere((task) => task.title == title);
  }

  void updateTaskStatus(String title, bool isCompleted) {
    final task = tasks.firstWhereOrNull((task) => task.title == title); 
    if (task != null) {
      task.isCompleted = isCompleted;
    }
  }

  void displayAllTasks() {
    print("Все задачи:");
    for (var task in tasks) {
      print("Название: ${task.title}, Описание: ${task.description}, Выполнено: ${task.isCompleted ? "Да" : "Нет"}");
    }
  }

  void displayCompletedTasks() {
    final completedTasks = tasks.where((task) => task.isCompleted);
    print("Выполненные задачи:");
    for (var task in completedTasks) {
      print("Название: ${task.title}, Описание: ${task.description}");
    }
  }

  void displayOutstandingTasks() {
    final outstandingTasks = tasks.where((task) => !task.isCompleted);
    print("Оставшиеся задачи:");
    for (var task in outstandingTasks) {
      print("Название: ${task.title}, Описание: ${task.description}");
    }
  }

  void clearCompletedTasks() {
    tasks.removeWhere((task) => task.isCompleted);
  }
}

void main() {
  final toDoList = ToDoList();

  toDoList.addTask("Задача 1", "Описание задачи 1");
  toDoList.addTask("Задача 2", "Описание задачи 2");
  toDoList.addTask("Задача 3", "Описание задачи 3");

  toDoList.displayAllTasks();
  print("");

  toDoList.updateTaskStatus("Задача 2", true);

  toDoList.displayCompletedTasks();
  print("");

  toDoList.displayOutstandingTasks();
  print("");

  toDoList.clearCompletedTasks();

  toDoList.displayAllTasks();
}
