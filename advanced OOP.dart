class Student {
  String name;
  int age;
  int gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printStudentInfo() {
    print('Name: $name, Age: $age, Grade Level: $gradeLevel');
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printTeacherInfo() {
    print('Name: $name, Age: $age, Subject: $subject');
  }
}

class School {
  Student student;
  Teacher teacher;

  School(this.student, this.teacher);

  void printSchoolInfo() {
    print('Student Info:');
    student.printStudentInfo();
    print('Teacher Info:');
    teacher.printTeacherInfo();
  }
}

void main() {
  Student student = Student('Charlotte Mwenda', 17, 12);
  Teacher teacher = Teacher('Mr. Amittai', 45, 'Math');

  School school = School(student, teacher);

  school.printSchoolInfo();
}