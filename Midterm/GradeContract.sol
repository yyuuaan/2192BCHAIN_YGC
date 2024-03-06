// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract MQuizContract {

    //define variables
    uint public name;
    uint public prelimGrade;
    uint public midtermGrade;
    uint public finalGrade;
    uint public overallGrade;
    bool public gradeStat;
    address public owner;

    event Log(address indexed sender, string message);
    event AnotherLog();

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;                              
    } 

    //set name
    function setName(uint256 _name) public {
        name = _name;
    }

    //set value of rate
    function setPrelimGrade(uint256 _prelimGrade) public onlyOwner {
        //Grade should be 0 - 100
        require(_prelimGrade >= 0 && _prelimGrade <= 100 , "Grade should be between 0 - 100.");
        prelimGrade = _prelimGrade;
    }

    function setMidtermGrade(uint256 _midtermGrade) public onlyOwner {
        ////Grade should be 0 - 100
        require(_midtermGrade >= 0 && _midtermGrade <= 100, "Grade should be between 0 - 100.");
        midtermGrade = _midtermGrade;
    }

    function setFinalGrade(uint256 _finalGrade) public onlyOwner {
        ////Grade should be 0 - 100
        require(_finalGrade >= 0 && _finalGrade <= 100, "Grade should be between 0 - 100.");
        finalGrade = _finalGrade;
    }

    function calculateGrade() public onlyOwner {
        if (prelimGrade >= 0 && prelimGrade <= 100 && midtermGrade >= 0 && midtermGrade <= 100 && finalGrade >= 0 && finalGrade <= 100 ) {
            overallGrade = ((prelimGrade + midtermGrade + finalGrade)/3);
        }

        else {
            revert("Grade should be between 0 - 100.");
        }
    }

    function gradeComputed() public onlyOwner {
        if (overallGrade > 75){ 
            emit Log(msg.sender, "You Passed!");
            gradeStat = true;
        }
        else if (overallGrade < 75){
            emit Log(msg.sender, "You Failed!");
            gradeStat = false;
        }
        else {
            revert("Grade should be between 0 - 100.");
        }        
    }
}