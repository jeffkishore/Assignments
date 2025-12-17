import React, { useState, useEffect } from "react";

const Task4 = () => {
  const [name, setName] = useState("");

  useEffect(() => {
    console.log("Name changed:", name);
  }, [name]);

  return (
    <div>
      <input
        type="text"
        value={name}
        onChange={(e) => setName(e.target.value)}
        placeholder="Enter name"
      />
    </div>
  );
};

export default Task4;
