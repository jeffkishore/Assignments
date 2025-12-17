import React, { useState } from "react";

const Task3 = () => {
  const [checked, setChecked] = useState(false);

  return (
    <div>
      <label>
        <input
          type="checkbox"
          checked={checked}
          onChange={(e) => setChecked(e.target.checked)}
        />
        Toggle
      </label>
      <p>{checked ? "Checked" : "Not Checked"}</p>
    </div>
  );
};

export default Task3;