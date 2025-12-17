import React, { useEffect } from "react";

const Task2 = () => {
  useEffect(() => {
    console.log("Component Loaded");
  }, []);

  return <h2>Component Loaded – check console</h2>;
};

export default Task2;