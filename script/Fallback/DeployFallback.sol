// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Fallback} from "../../src/Fallback.sol";

contract DeployFallback is Script {

    function run() external {
        
        uint256 pkey = vm.envUint("PKEY");
        vm.startBroadcast(pkey);

        new Fallback{value : 1}();

        vm.stopBroadcast();
    }
}
