import React from 'react';

function ChildComponent (props) {
    const dataToPass = "Hello From parent!";
    return (
        <div>
            <p>{props.message}</p>
        </div>
    );
}

export default ChildComponent;