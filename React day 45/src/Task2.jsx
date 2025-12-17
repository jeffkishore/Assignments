import React, { useState } from "react";

const Task2 = () => {
  const [text, setText] = useState("");

  const handleChange = (e) => {
    setText(e.target.value.toUpperCase());
  };

  return (
    <div>
      <input
        type="text"
        value={text}
        onChange={handleChange}
        placeholder="Type here"
      />
      <p>{text}</p>
    </div>
  );
};

export default Task2;