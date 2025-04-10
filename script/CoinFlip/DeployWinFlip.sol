// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {WinFlip} from "../../src/WinFlip.sol";

contract DeployCoinFlip is Script {

    function run() external {
        
        uint256 pkey = vm.envUint("PKEY");
        vm.startBroadcast(pkey);

        WinFlip winFlipSC = new WinFlip();

        winFlipSC.winFlip();

        vm.stopBroadcast();
    }
}
