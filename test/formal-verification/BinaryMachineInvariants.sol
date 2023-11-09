// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.16;

import {BinaryMachine} from "../../src/BinaryMachine.sol";

contract BinaryMachineInvariants is BinaryMachine {
    function invariantOne() public view {
        assert(x < 1);
    }
}

/*

192:smt-checker-demo andrejrakic$ forge build
[⠆] Compiling...
[⠔] Compiling 21 files with 0.8.17
[⠘] Solc 0.8.17 finished in 4.09s
Compiler run successful (with warnings)
warning[6328]: Warning: CHC: Assertion violation happens here.
Counterexample:
x = 1

Transaction trace:
BinaryMachineInvariants.constructor()
State: x = 0
BinaryMachine.setOne()
State: x = 1
BinaryMachineInvariants.invariantOne()
 --> test/smt-checker/BinaryMachineInvariants.sol:8:9:
  |
8 |         assert(x < 1);
  |         ^^^^^^^^^^^^^

*/
