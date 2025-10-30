function greet (name){
    console.log("Hello " + name);
}

function userInput(callback){
    let name = "Kishore" ;
    callback(name);
}

userInput(greet);