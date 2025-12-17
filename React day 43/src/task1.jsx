import { useState } from "react";

function Counter() {
    const [count, setCount] = useState(0);
    const increment = () => {
        setCount(count + 1)
    }
    function decrement(){
        setCount(count - 1)
    }
  return (
    <div>
        <h1>Counter : {count}</h1>
        <button onClick={increment}> Increase </button>
        <button onClick={decrement}> decrease </button>

    </div>
  )
}

export default Counter;