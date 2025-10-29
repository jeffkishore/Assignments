// 🧩 Definition of break statement:

// The break statement is used inside loops to immediately stop (terminate) the loop — even if the loop condition is still true.
// After break, the program jumps out of the loop and continues with the next statement after it.

// syntax 

// for (initialization; condition; increment) {
//     if (condition_to_stop) {
//         break; // exits the loop
//     }
//     // code to execute
// }

/////////////////////////////////////////////

for(i=1;i<=20;i++){
    if(i==10){
        break;
    }
    console.log(i);
    
}
