// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";

contract FindPassword is Script {

    function run() external {

        address levelInstance = 0x2BDC79f30Df0297493EF984B6354552D7a65c7F2;
        uint256 slot = 1;
        bytes32 data = vm.load(levelInstance, bytes32(slot));

        console.logBytes32(data);
    }
}