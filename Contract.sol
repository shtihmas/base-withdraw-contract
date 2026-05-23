// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BaseContract {
    string public name = "";
    uint256 public commitNumber = 5;
    uint256 public lastUpdated = block.timestamp;

    event ContractUpdated(uint256 commitNumber, string message);

    constructor() {
        emit ContractUpdated(commitNumber, "Commit #5");
    }

    // Comment for commit variation 5
    function getVersion() public pure returns (string memory) {
        return "v0.5";
    }
}
