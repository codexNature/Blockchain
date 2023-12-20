// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ContractOne {

    mapping (address => uint) public addressBalances;

    function deposit() public payable {
        addressBalances[msg.sender] += msg.value;
    }

    receive() external payable { 
        deposit();//calling the deposie function
    }
}

contract ContractTwo {
    receive() external payable {}

    function depositOnContractOne(address _contractOne) public {
       // ContractOne one = ContractOne(_contractOne);
        //bytes memory payload = abi.encodeWithSignature("deposit()");//
        //one.deposit{value: 10, gas: 100000}(); //this is how to make it so that value here goes to function deposit on line 9.
       (bool success, ) = _contractOne.call{value: 10, gas: 100000}("");
       require(success);
    }
}