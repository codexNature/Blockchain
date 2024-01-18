// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "./Ownerble.sol";

// contract Owner {
//     address owner;

//     constructor() {
//         owner = msg.sender;
//     }

//     modifier onlyOwner() {
//         require(msg.sender == owner, "You are not allowed");
//         _;
//     }
// }

//we can remove the above contract



contract InheritanceModifierExample is Owner {

    mapping(address => uint) public tokenBalance;

    uint tokenPrice = 1 ether;

    constructor() {
        tokenBalance[msg.sender] = 100;
    }

    function creatNewToken() public onlyOwner {
        tokenBalance[owner]++;
    }

    function burnToken() public onlyOwner {
        tokenBalance[owner]--;
    }

    function purchaseToken() public payable {
        require((tokenBalance[owner] * tokenPrice) / msg.value > 0, "not enough tokens");
        tokenBalance[owner] -= msg.value / tokenPrice;
        tokenBalance[msg.sender] += msg.value / tokenPrice;
    }

    function sendToken(address _to, uint _amount) public {
        require(tokenBalance[msg.sender] >= _amount, "Not enough token");
        tokenBalance[msg.sender] -= _amount;
        tokenBalance[_to] += _amount;
    }
}