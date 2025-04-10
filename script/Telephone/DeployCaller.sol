// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Caller} from "../../src/Telephone.sol";

contract DeployCoinFlip is Script {

    function run() external {
        
        uint256 pkey = vm.envUint("PKEY");
        vm.startBroadcast(pkey);

        new Caller();

        vm.stopBroadcast();
    }
}
