// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract SampleUnits {
    modifier betweenOneAndTwoEth() {
        require(msg.value >= 1 ether && msg.value <= 2 ether);
        _;
    }


//below code means i am running the code for 7 days
    uint runUntilTimestamp;
    uint startTimestamp;

    constructor(uint startInDays) {
        startTimestamp = block.timestamp + (startInDays * 1 days);
        runUntilTimestamp = startTimestamp + (7 days);
    }

}