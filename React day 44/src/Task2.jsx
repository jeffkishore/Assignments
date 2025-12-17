import React, { useState } from "react";

const Task2 = () => {
  const [isPremiumUser, setIsPremiumUser] = useState(true);

  return (
    <div>
      <button onClick={() => setIsPremiumUser(!isPremiumUser)}>
        Toggle Premium
      </button>
      {isPremiumUser && <button>Premium Feature</button>}
    </div>
  );
};

export default Task2;