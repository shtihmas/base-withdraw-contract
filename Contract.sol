// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Base Contract
 * @notice Smart contract created for Base network
 */
contract BaseContract {
    string public contractName;
    uint256 public deployedTimestamp;

    event ContractCreated(string name);

    constructor(string memory _name) {
        contractName = _name;
        deployedTimestamp = block.timestamp;
        emit ContractCreated(_name);
    }

    function getContractInfo() public view returns (string memory, uint256) {
        return (contractName, deployedTimestamp);
    }
}
