// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BaseContract {
    string public name = "";
    uint256 public commitNumber = 3;
    uint256 public lastUpdated = block.timestamp;

    event ContractUpdated(uint256 commitNumber, string message);

    constructor() {
        emit ContractUpdated(commitNumber, "Commit #3");
    }

    // Comment for commit variation 3
    function getVersion() public pure returns (string memory) {
        return "v0.3";
    }
}
