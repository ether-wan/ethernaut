// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {KingHunter} from "../../src/KingHunter.sol";

contract DeployKingHunter is Script {

    function run() external {
        
        uint256 pkey = vm.envUint("PKEY");
        vm.startBroadcast(pkey);

        new KingHunter{value: 0.001 ether}();

        vm.stopBroadcast();
    }
}
