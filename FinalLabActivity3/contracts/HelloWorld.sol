// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract HelloWorld {

event UpdatedMessages (string oldStr, string newStr);

string public message;

constructor(string memory initMessage) { 
    message = initMessage;
}

// A public function that accepts a string argument and updates the message storage variable.
function update (string memory newMessage) public {
    string memory oldMsg = message;
    message = newMessage;
    emit UpdatedMessages (oldMsg, newMessage);

    console.log("Updating the message...");
    const tx = await helloWorldContract.update("This is the new message.");
    await tx.wait();
}
}