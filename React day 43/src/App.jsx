import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import Counter from './task1'
import TextBox from './task2'
import Button from './task3'
import OrE from './task4'
import Color from './task5'
import Form from './task6'
import './App.css'
import Counter2 from './task7'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <Counter/>
      <TextBox/>
      <Button/>
      <OrE/>
      <Color/>
      <Form/>
      <Counter2/>
    </>
  )
}

export default App
