import React, { useState } from "react";

const Task1 = () => {
  const [name, setName] = useState("");

  return (
    <div>
      <input
        type="text"
        value={name}
        onChange={(e) => setName(e.target.value)}
        placeholder="Enter your name"
      />
      {name && <p>Hello, {name}</p>}
    </div>
  );
};

export default Task1;