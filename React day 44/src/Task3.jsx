import React from "react";

const Task3 = () => {
  const cities = ["New York", "London", "Paris", "Tokyo", "Sydney"];

  return (
    <ul>
      {cities.map((city, index) => (
        <li key={index}>{city}</li>
      ))}
    </ul>
  );
};

export default Task3;