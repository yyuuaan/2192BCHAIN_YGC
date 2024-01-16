//comparing function
// import React from "react"

// function Greeting() {
//     return(
//         <h1>Hello! I am standard function.</h1>
//     );
//     }   
// const ArrowGreeting = () => (
//     <h1>Hello! I am an arrow function.</h1>
// );

// export default ArrowGreeting;



//function with an arrow function
function ShinyButton(){
    const handleClick = () => {
        alert("You clicked me!");
    }
    return(
        <button onClick={handleClick}>
            Click This Button!
        </button>
    );
}

export default ShinyButton;
