//Use a finally block that always prints “Code executed.”
try{
    let a=10
    let b=20
    let c=a+b
    console.log(c);
}catch(error){
       console.log("Error:", error.message);
}finally{
    console.log("Code executed");
}