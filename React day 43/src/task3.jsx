import { useState } from "react";

function Button() {
    const [isOn, setIsOn] = useState(false);
    let text
    if(isOn === true){
        text = "ON"
    } else {
        text = "OFF"
    }
    
  return (
    <div>
        <h2>Status: {text}</h2>

      <button onClick={() => setIsOn(!isOn)}>
        {isOn ? "Turn OFF" : "Turn ON"}
      </button>
    </div>
  )
}

export default Button;