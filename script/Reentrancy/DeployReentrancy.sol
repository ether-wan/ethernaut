// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {ReentrancyAttack} from "../../src/ReentrancyAttack.sol";

contract DeployReentrancy is Script {

    ReentrancyAttack attacker;

    function run() external {
        
        uint256 pkey = vm.envUint("PKEY");
        vm.startBroadcast(pkey);

        attacker = new ReentrancyAttack{value: 0.001 ether}();
        attacker.attack();

        vm.stopBroadcast();
    }
}
