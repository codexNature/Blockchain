// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Wallet {

    PaymentReceived public payment;

    // address sender;
    // uint valueSent;

    function payContract() public payable {
        payment = new PaymentReceived(msg.sender, msg.value);

        // sender = msg.sender;
        // valueSent = msg.value;        
    }
}

contract PaymentReceived {
    address public from;
    uint public amount;

    constructor(address _from, uint _amount) {
        from = _from;
        amount = _amount;
    }
}

contract Wallet2 {

    struct PaymentReceivedStruct {
        address from;
        uint amount;
    }

    PaymentReceivedStruct public payment;


    function payContract() public payable {
        //payment = PaymentReceivedStruct(msg.sender, msg.value);
        payment.from = msg.sender;
        payment.amount = msg.value;
    }
}