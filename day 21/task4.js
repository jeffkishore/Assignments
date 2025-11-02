let numbers = [1,2,3,4,5];
// let sq = numbers.map(num => num * num);
// console.log(sq);

let sq = numbers.map(function(num){
    return num * num;
});
console.log(sq);

