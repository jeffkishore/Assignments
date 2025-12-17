import React from 'react'
import { useState } from 'react'
function Form() {
    const [email , setEmail] = useState("");
    const [password , setPassword] = useState("");

    function emaill(e){
        setEmail(e.target.value)
    }
    function pass(e){
        setPassword(e.target.value)
    }
  return (
    <form >
      <div>
        <label>Email: </label>
        <input
          type="email"
          value={email}
          onChange={(emaill)}
          required
        />
      </div>
      <div>
        <label>Password: </label>
        <input
          type="password"
          value={password}
          onChange={(pass)}
          required
        />
      </div>
      <button type="submit">Login</button>
    </form>
  );
};


export default Form;