// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22 <0.8.0;

contract Election {
    uint public candidateCount = 0;
    string public candidate;

    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    mapping(uint => Candidate) public candidates;

    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
        addCandidate("Candidate 3");   
    }


    function addCandidate (string memory _name) private {
        candidateCount++;
        candidates[candidateCount] = Candidate(candidateCount, _name, 0);
    }
}