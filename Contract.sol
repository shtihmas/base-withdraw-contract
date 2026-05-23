// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BaseContract {
    string public name = "";
    uint256 public commitCount = 2;
    uint256 public lastUpdated = block.timestamp;

    event ContractUpdated(uint256 commitCount);

    constructor() {
        emit ContractUpdated(commitCount);
    }
}
