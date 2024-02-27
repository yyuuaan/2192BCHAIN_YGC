// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract MQuizContract {

    //define variables
    uint public age;
    uint public hrsWrk;
    uint public rate;
    uint public totSal;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;                              
    } 

    //set age
    function setAge(uint256 _age) public {
        age = _age;
    }

    //set value of rate
    function setRate(uint256 _rate) public {
        //rate will not be zero
        require(_rate != 0, "Value cannot be zero");
        rate = _rate;
    }

    function setHrsWrk(uint256 _hours) public onlyOwner {
        //hourwork will not be zero
        require(_hours != 0, "Value cannot be zero");
        hrsWrk = _hours;
    }

    function calculateTotSal(uint256 _totSal) public onlyOwner {
        if (hrsWrk > 0 && rate > 0) {
            totSal = (hrsWrk * rate);
            totSal = _totSal;
        }

        else {
            revert("Hours Worked or Hourly rate less than 0");
        }
    }
}