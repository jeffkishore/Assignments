function number(a){
    if(a<0)
    {
        throw new Error("please enter the value above 0")
    }
    return a
}
try{
    console.log(number(-1));
}
catch(error){
console.log("Error:",error.message);
}
finally{
    console.log("this code executed sucessfully");
}