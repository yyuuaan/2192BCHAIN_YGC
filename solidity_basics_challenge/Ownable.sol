// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Ownable{
    address public owner;
    event OwnershipTransferred (address indexed previousOwner, address indexed newOwner);

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Only the owner can access this function");
        _;
    }

    function transferOwnership (address newOwner) public onlyOwner{
        require(newOwner != address(0), "Invalid new owner's address");
        emit OwnershipTransferred(owner, newOwner);
    }
}

contract MyContract is Ownable{
    uint256 public someValue;

    function setSomeValue(uint256 newValue) external onlyOwner{
        someValue = newValue;
    }
}