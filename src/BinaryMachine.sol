// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.16;

contract BinaryMachine {
    uint x;

    function setOne() public {
        x = 1;
    }

    function setZero() public {
        x = 0;
    }
}
