// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract WillThrow {
    error NotAllowedError(string); //custom exception are defined at the begining of a contract
    function aFunction() public pure {
        //require(false, "Error Message"); //requre will fire an exception called Error
        //assert(false); //while assert will fire an exception called Panic
        revert NotAllowedError("You are not allowed");
    }
}

contract ErrorHandling {
    event ErrorLogging(string reason);
    event ErrorLogCode(uint code);
    event ErrorLogBytes(bytes lowLevelData);
    function catchTheError() public {
        WillThrow will = new WillThrow();
        try will.aFunction() {
            //add code here it it works
        } catch Error(string memory reason) {
            emit ErrorLogging(reason);
        } catch Panic(uint errorCode) {
            emit ErrorLogCode(errorCode);
        } catch(bytes memory lowLevelData) {
            emit ErrorLogBytes(lowLevelData);
        }
    }
}