// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {WinFlip} from "../../src/WinFlip.sol";

contract DeployCoinFlip is Script {

    function run() external {
        
        uint256 pkey = vm.envUint("PKEY");
        vm.startBroadcast(pkey);

        WinFlip winFlipSC = WinFlip(0x9c58f066033B8AA28986ec43E64DDa8Af4a9ca19);

        winFlipSC.winFlip();

        vm.stopBroadcast();
    }
}
