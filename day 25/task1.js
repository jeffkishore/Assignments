//Write a try...catch block that catches a ReferenceError.
try{
   let num=10;
   console.log(num*x);
}catch(error){
    console.log("Error:",error.message);
}