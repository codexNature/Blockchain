// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ExampleUint {
    uint256 public myUint; //could store value from 0 - (2^256)-1

    //uint8 public myUint8 = 250;

    uint8 public myUint8 = 2**4;

    int public myInt = -10; // could stire -2^128 to +2^128-1

    function  setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    function decreamentUint() public {
        myUint--;
    }

    function increamentUint8() public {
        myUint8++;
    }

    function increamentInt() public {
        myInt++;
    }
}
