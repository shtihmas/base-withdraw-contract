// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BaseContract {
    string public name = "";
    uint256 public version = 1;
    uint256 public updatedAt = block.timestamp;

    event Updated(uint256 version);

    constructor() {
        emit Updated(version);
    }
}
