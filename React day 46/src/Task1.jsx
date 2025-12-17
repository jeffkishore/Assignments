import React, { useEffect } from "react";

const Task1 = () => {
  useEffect(() => {
    console.log("Rendered!");
  });

  return <h2>Check the console to see the render message.</h2>;
};

export default Task1;