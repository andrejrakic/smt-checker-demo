// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.16;

import {Counter} from "../../src/Counter.sol";

contract CounterInvariants is Counter {
    function invariantCanNotDecrement(uint256 newNumber) public {
        setNumber(newNumber);

        assert(newNumber > 1);
        //  assert(newNumber > 0); -> correct invariant
    }
}

/*

warning[6328]: Warning: CHC: Assertion violation happens here.
Counterexample:
number = 1
newNumber = 1

Transaction trace:
CounterInvariants.constructor()
State: number = 0
CounterInvariants.invariantCanNotDecrement(1)
    Counter.setNumber(1) -- internal call
  --> test/formal-verification/CounterInvariants.sol:10:9:
   |
10 |         assert(newNumber > 1);
   |         ^^^^^^^^^^^^^^^^^^^^^

*/
