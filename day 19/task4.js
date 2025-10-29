// The do while loop is a variant of the while loop. This loop will execute the code block once, before checking if the condition is true, then it will repeat the loop as long as the
//  condition is true.

// syntax 
// do {
//    code block to be executed
// }
// while (condition);

// 🧩 Definition of do...while loop:

// A do...while loop in JavaScript is used to execute a block of code at least once, and then it keeps running 
// while the given condition is true.

// 💡 Difference from while loop:
// A do...while loop checks the condition after running the code block once — so the loop will always run 
// at least one time, even if the condition is false initially.

/////////////////////////////////////////////////////////////////////////////

let i =1;

do{
    console.log(i);
    i++;
}while(i<=5);