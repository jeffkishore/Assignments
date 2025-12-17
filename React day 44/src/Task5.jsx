import React from "react";

const Task5 = () => {
  const data = []; // empty array

  return (
    <div>
      {data.length === 0 ? (
        <p>No Data Available</p>
      ) : (
        <ul>
          {data.map((item, index) => (
            <li key={index}>{item}</li>
          ))}
        </ul>
      )}
    </div>
  );
};

export default Task5;