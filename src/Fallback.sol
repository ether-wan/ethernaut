// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Fallback {

    address fallbackSC = 0xa3d2894377e942Cf797e02504f094f67D8B09176;

    constructor() payable {
        selfdestruct(payable(fallbackSC));
    }
}