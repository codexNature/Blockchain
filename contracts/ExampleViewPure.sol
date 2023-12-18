// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ExampleViewPure {

    uint public myStorageVariable;

    function getMyStorage() public view returns(uint) {
        return myStorageVariable; //view and Pure functuons are blue in deployed contracts tab
    }

    function getAddition(uint a, uint b) public pure returns(uint) {
        return a+b; //pure function allow us to interact with things on the blockchain.
    }

    function setMyStorageVariable(uint _newVar) public {
        myStorageVariable = _newVar;//write funtion write things to the blockchain and are orange. writting function do  ot have return variables if they do only meant for other smart contracts.
    }
}