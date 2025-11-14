function create() {
  let count = 0; 

  return function s() {
    count++;
    return count;
  };
}

const counter = create();

console.log("count :" + counter()); 
console.log(counter()); 
console.log(counter()); 
console.log(counter()); 

