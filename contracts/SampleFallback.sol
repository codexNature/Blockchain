// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract SampleFallback {

    uint public lastValueSent;
    string public lastFunctionCalled;


    uint public myUint;

    function setMyUint(uint _myNewUint) public {
        myUint = _myNewUint;
    }

    // "setMyUint(uint256)"

    // 0xe492fd840000000000000000000000000000000000000000000000000000000000000001

    // 0xe492fd842fb25dc4b3c624c80776108b452a545c682a78e4252b5560c6537b79

    receive() external payable {
        lastValueSent = msg.value;
        lastFunctionCalled = "receive";
    }

    fallback() external payable {
        lastValueSent = msg.value;
        lastFunctionCalled = "fallback";
    }
} 