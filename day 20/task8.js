//Use a callback function to display “Task Complete” after another function finishes.
function task(){
    console.log("Task complete");
}
function ar(callback){
    console.log("On Task");
    setTimeout(()=>{
     callback();

    },2000);
}
ar(task);
