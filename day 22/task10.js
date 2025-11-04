//Use prototypes to add a new method to all Student objects dynamically.
function Student(name, age) {
  this.name = name;
  this.age = age;
}
Student.prototype.greet = function() {
  console.log(`Hello, my name is ${this.name} and I am ${this.age} years old.`);
};
const s1 = new Student("kishore", 18);
const s2 = new Student("ottis", 19);
s1.greet();
s2.greet();