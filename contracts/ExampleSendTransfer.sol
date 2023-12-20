// SPDX-License-Identifier: GPL-3.0
//how to send money around and transfer as they are different

pragma solidity >=0.8.2 <0.9.0;

contract Sender {
    receive() external payable {}  

    function withdrawTransfer(address payable _to) public {
        _to.transfer(10);
    }

    function withdrawSend(address payable _to) public {
        bool isSent = _to.send(10);

        require(isSent, "Sending funds was not successful!!");
    }
}
//the twomfunctions above do samething, below explains when to use which.

contract ReceiverNoAction {

    function balance() public view returns(uint) {
        return address(this).balance; //this function is used to check balance.
    }
    receive() external payable {}
}

contract RceiveAction {
    uint public balanceReceived;

    receive() external  payable {
        balanceReceived += msg.value; //this will update our balance received. writes to a storage variable.
    }

    function balance() public view returns(uint) {
        return address(this).balance;
    }
}