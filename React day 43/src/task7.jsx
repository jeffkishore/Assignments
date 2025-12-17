import React from 'react'
import { useState } from 'react';
function Counter2(){
    const [count, setCount] = useState(0);
    const reset = () => setCount(0);
  return (
    <div>
      <h2>Count: {count}</h2>
      <button onClick={() => setCount(count + 1)}>Increase</button>
      <button onClick={() => setCount(count - 1)}>Decrease</button>
      <button onClick={reset}>Reset</button>
    </div>
  )
}

export default Counter2;