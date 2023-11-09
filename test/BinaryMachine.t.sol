// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.16;

import "forge-std/Test.sol";
import {BinaryMachine} from "../src/BinaryMachine.sol";

contract BinaryMachineInvariants is BinaryMachine {
    function invariantOne() public view {
        assert(x < 1);
    }
}

contract BinaryMachineTest is Test {
    BinaryMachineInvariants public binaryMachine;

    function setUp() public {
        binaryMachine = new BinaryMachineInvariants();
    }
}
