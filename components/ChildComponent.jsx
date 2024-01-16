// RECEIVING PROPS
import React from "react";

function ChildComponent(props) {
    return (
        <div>
            <p>{props.message}</p>
        </div>
    );
}

export default ChildComponent;

//RECEIVING PROPS USING CLASS
// import React, {Component} from "react";

// class ChildComponent extends Component {
//     render() {
//         return (
//             <div>
//                 <p>{props.message}</p>
//             </div>
//         );
//     }
// }