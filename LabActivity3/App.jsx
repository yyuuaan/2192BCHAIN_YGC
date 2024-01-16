import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import ShinyButton from './components/Conditional-Demo-1'
import RainOrShine from './components/Conditional-Demo-2'
import RainOrShine1 from './components/Conditional-Demo-3'
import TernaryRoS from './components/Conditional-Demo-4'

function App() {
  return (
    <>
      <div>
        <ShinyButton />

        <RainOrShine
          isRainy={false}
          />

        <RainOrShine1
          isRainy={true}
          />
    
        <TernaryRoS />
      </div>
    </>
  )
}

export default App
