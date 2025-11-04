//Create a class Student with constructor and display() method — make 3 students.
class Student {
  constructor(name, age, grade) {
    this.name = name;
    this.age = age;
    this.grade = grade;
}
  display() {
    console.log(`Name: ${this.name}, Age: ${this.age}, Grade: ${this.grade}`);
  }
}
const s1 = new Student("kishore", 18, "A");
const s2 = new Student("giri", 19, "B");
const s3 = new Student("varun", 18, "A+");
s1.display();
s2.display();
s3.display();