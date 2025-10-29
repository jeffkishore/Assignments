// 🧩 Definition of continue statement:

// The continue statement is used inside loops to skip the current iteration and move to the next one immediately
//  — without executing the rest of the code in that iteration.

// 💡 It’s helpful when you want to ignore or skip specific values or conditions in a loop.

// Syntax

// for (initialization; condition; increment) {
//     if (condition_to_skip) {
//         continue; // skips this iteration
//     }
//     // code to execute if not skipped
// }

//////////////////////////////////////////////////////////////////

for (i=1; i<=10 ; i++){
    if(i==7){
        continue;
    }
    console.log(i);
    
}
