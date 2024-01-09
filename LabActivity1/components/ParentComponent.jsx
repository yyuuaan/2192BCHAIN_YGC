import React from 'react';
import ChildComponent from './ChildComponent';

function ParentComponent () {
    const dataToPass = "Hello From parent!";
    return (
        <ChildComponent message={dataToPass} />
    );
}

export default ParentComponent;

//Class component
// import React from "react";
// import { render } from "react-dom";
// import ChildComponent from "./ChildComponent";

// class ParentComponent extends React.Component{
//     render(){
//         const dataToPass = "Hello mga anak";

//         return(
//             <ChildComponent message={dataToPass}/>
//         );
//     }
// }
// export default ParentComponent;