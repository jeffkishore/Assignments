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

let emp1 = new employee("hari", 50000);
let emp2 = new employee("kishore", 70000);

emp1.displayinfo();
emp2.displayinfo();