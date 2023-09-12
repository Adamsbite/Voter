// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Designing the Smart Contract:
// Writing the Smart Contract:
// Writing the Deployment Script
// Configuring Hardhat:
// Compiling the Contract:
// create
contract Voting {
    struct Proposal {
        string description;
        uint voteCount;
    }
    address public owner;
    Proposal[] public proposals;

    mapping(address => bool) public voters;

    constructor(string[] memory proposalDescriptions) {
        owner = msg.sender;
        for (uint i = 0; i < proposalDescriptions.length; i++) {
            proposals.push(
                Proposal({description: proposalDescriptions[i], voteCount: 0})
            );
        }
    }

    function vote(uint proposal) public {
        require(!voters[msg.sender], "You have already voted.");
        require(proposal < proposals.length, "Invalid proposal.");

        voters[msg.sender] = true;
        proposals[proposal].voteCount += 1;
    }
}
