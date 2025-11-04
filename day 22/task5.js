class employee {
    constructor(name , sal) {
        this.name = name;
        this.sal = sal;
    }

    displayinfo(){
        console.log(`${this.name} salary is  ${this.sal}`);
        // console.log(this.name + " salary is " + this.sal );
        
    
    }
}
    
class manager extends employee {
    constructor(name, sal, department){
    super(name, sal);
    this.department = department;
}
displayinfo(){
console.log(`Manager Name: ${this.name}, Salary: ₹${this.sal}, Department: ${this.department}`);    
}
}



let emp1 = new employee("hari", 50000);
let emp2 = new employee("kishore", 70000);

let mgr1 = new manager("priya", 80000 , "HR");

emp1.displayinfo();
emp2.displayinfo();

mgr1.displayinfo();
