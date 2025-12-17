import React, { useState } from "react";

const Task4 = () => {
  const [country, setCountry] = useState("");

  return (
    <div>
      <select value={country} onChange={(e) => setCountry(e.target.value)}>
        <option value="">Select Country</option>
        <option value="India">India</option>
        <option value="USA">USA</option>
        <option value="UK">UK</option>
        <option value="Japan">Japan</option>
        <option value="Australia">Australia</option>
      </select>
      {country && <p>Selected Country: {country}</p>}
    </div>
  );
};

export default Task4;