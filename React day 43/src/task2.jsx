// rfce
import { useState } from "react";

function TextBox() {
    const [text, setText] = useState("");
    function textChange(e){
        setText(e.target.value)
    }
  return (
    <div>
        <input type="text" placeholder='Type Something....' value={text} 
        onChange={(textChange)}/>
        <p>{text}</p>
    </div>
  )
}

export default TextBox;