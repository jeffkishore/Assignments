function createAsyncCounter() {
  let count = 0; 

  return async function increment() {

    await new Promise((resolve) => setTimeout(resolve, 1000));
    
    count++;
    console.log(`Counter updated: ${count}`);
  };
}


const counter = createAsyncCounter();

counter(); 
counter(); 
counter(); 
