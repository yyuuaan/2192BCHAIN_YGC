// PASSING PROPS
import React from "react";
import ChildComponent from './ChildComponent';

export default function ParentComponent() {
    const dataToPass = "Hello from parent!";
    return (
        <ChildComponent message={dataToPass} />
    );
}