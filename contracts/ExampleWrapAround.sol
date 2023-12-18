// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ExampleWrapAround {
    uint256 public myUint;

    uint8 public myUint8 = 2**4;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    function decreamentUint() public {
        unchecked {
            myUint--;
        }
    }

    function increamentUint8() public {
        myUint8++;
    }

    
}