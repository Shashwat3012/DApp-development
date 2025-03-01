// SPDX-License-Identifier: MIT

pragma solidity ^0.4.22;

contract Election {
    uint public candidateCount = 0;
    string public candidate;

    
    constructor() public {
        candidate = "Candidate 1";
    }


    function addCandidate (string memory _name) private {
        candidateCount++;
    }
}