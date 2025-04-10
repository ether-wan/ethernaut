// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {TokenOdometer} from "../../src/TokenOdometer.sol";

contract DeployOdometer is Script {

    function run() external {
        
        uint256 pkey = vm.envUint("PKEY");
        vm.startBroadcast(pkey);

        new TokenOdometer();

        vm.stopBroadcast();
    }
}