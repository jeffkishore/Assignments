import React, { useState } from "react";

const Task1 = () => {
  const [isLoggedIn, setIsLoggedIn] = useState(false);

  return (
    <div>
      <p>Status: {isLoggedIn ? "Logged In" : "Guest"}</p>
      <button onClick={() => setIsLoggedIn(!isLoggedIn)}>
        {isLoggedIn ? "Logout" : "Login"}
      </button>
    </div>
  );
};

export default Task1;