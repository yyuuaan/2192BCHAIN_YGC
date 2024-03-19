// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    // This function allows the contract to receive Ether
    receive() external payable {}

    // Function to deposit Ether into the contract
    function deposit() external payable {
        // No additional logic required as the fallback function handles the deposit
    }

    // Function to withdraw Ether from the contract
    function withdraw(uint256 _amount) external {
        require(msg.sender == owner, "Only the owner can withdraw funds");
        require(address(this).balance >= _amount, "Insufficient balance in the contract");
        owner.transfer(_amount);
    }

    // Function to get the balance of the contract
    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
