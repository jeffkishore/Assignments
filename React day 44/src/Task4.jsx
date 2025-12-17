import React from "react";

const Task4 = () => {
  const cities = [
    { id: 1, name: "New York" },
    { id: 2, name: "London" },
    { id: 3, name: "Paris" },
    { id: 4, name: "Tokyo" },
    { id: 5, name: "Sydney" },
  ];

  return (
    <ul>
      {cities.map((city) => (
        <li key={city.id}>{city.name}</li>
      ))}
    </ul>
  );
};

export default Task4;