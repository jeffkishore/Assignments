function sumArray(numbers) {
  let sum = 0;

  for(let i = 0; i < numbers.length; i++) {
    sum += numbers[i]; // add each number to sum
  }

  return sum;
}

let result = sumArray([10, 20, 30, 40]);
console.log("Sum:", result);
