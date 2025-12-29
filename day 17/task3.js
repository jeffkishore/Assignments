let str="hello";
console.log(str.split("").reverse().join(""));

let n =-8;
console.log(n>=0 ? "positive" : "negative");

let n=123,sum=0;
while(n>0){
 sum+=n%10;
 n=Math.floor(n/10);
}
console.log(sum);

let arr=[5,2,9,1];
console.log(Math.max(...arr));


