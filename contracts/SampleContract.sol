// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract SampleContract {
    string public myString = "Hello World";

    function updateString(string memory _newString) public {
        myString = _newString;
    }
}