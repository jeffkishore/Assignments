function sumAll(...numbers) {
  let total = 0;
  for (let num of numbers) {
    total += num;
  }
  return total;
}

console.log(sumAll(10, 20, 30));  
console.log(sumAll(5, 15, 25, 35));  
