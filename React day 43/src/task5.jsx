import React from 'react'
import { useState} from 'react'
function Color() {
  const [bgColor, setBgcolor]= useState("white");
  function ChangeColor(){
    setBgcolor(bgColor === "white" ? "lightblue" : "white");
  }
  return (
    <div  style={{backgroundColor: bgColor , height: "100vh" , display: "flex", alignItems: "center"}}
>
      <button onClick={ChangeColor}>Change Background
      </button>
    </div>
  )
}

export default Color;