import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import avatar from './assets/avatar.png'
import denim from './assets/denim.png'
import jean from './assets/jean.png'
import Student from './task1'
import Details from './task2'
import Message from './task3'
import Button from './task4'
import Card from './task5'
import ProfileCard from './task6'
import ReuseableButton from './task7'
import Product from './task8'
import Layout from './task9'

function App() {

  return (
    <>
      <Student/>

      <Details Name = "Kishore" Age = "21"/>

      <Message Message = "Mechanical & Automation "/>

      <Button text="Submit"/>

      <Card name = "Kishore" age = "21" course = " Mechanical & Automation "/>

      <ProfileCard image ={avatar} name = "Kishore" job="Developer"/>

      <ReuseableButton text = "SUBMIT "/>
      <ReuseableButton text = "CANCEL"/>

      <div id = "p">
      <Product image ={denim}/>
      <Product image ={jean} />
      </div>
      <div id="t">
      <Product name=" Grey Denim" price = "49$"/>
      <Product name=" Jean" price = "39$"/>
      </div>

        <Layout>
         <h1>My Website</h1>
         <p>This content is inside the Layout component.</p>
         <button>Click Me</button>
        </Layout>



    </>
  )
}

export default App
