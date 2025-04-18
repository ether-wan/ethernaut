// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";

contract PrivacyUnlocker is Script {

    function run() external {

        address levelInstance = 0xA0139e8cDC6611169F5DF7a78De94c31a80B5306;
        uint dataSlot = 5;
        bytes32 data;

        data = vm.load(levelInstance, bytes32(dataSlot));

        console.logBytes16(bytes16(data));
    }
}