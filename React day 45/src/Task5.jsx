 import React, { useState } from "react";

const Task5 = () => {
  const [password, setPassword] = useState("");
  const [confirm, setConfirm] = useState("");

  const isMatch = password === confirm && password !== "";

  return (
    <div>
      <div>
        <label>Password: </label>
        <input
          type="password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />
      </div>
      <div>
        <label>Confirm Password: </label>
        <input
          type="password"
          value={confirm}
          onChange={(e) => setConfirm(e.target.value)}
        />
      </div>
      <p>
        {confirm && (isMatch ? "Passwords match ✅" : "Passwords do not match ❌")}
      </p>
    </div>
  );
};

export default Task5;