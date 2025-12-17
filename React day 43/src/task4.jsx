import { useState } from 'react'

function OrE() {
    const [num , setNum] = useState(0);
  return (
    <div>
        <input type="number" placeholder='Enter a num ' value={num} onChange={e => setNum(e.target.value)} />
        <p> Number is {num % 2 === 0 ? "Even" : "Odd"}</p>
    </div>
  )
}

export default OrE;