pragma solidity >= 0.4.22 <0.7.0;

contract Election {
    struct Candidate {
        uint id;
        string name;
        uint votes;
    }
    
    mapping(uint=>Candidate) public candidates;
    mapping(address=>bool) public voters;
    uint public candidatesCount;
    uint maxCandidates;
    bool ended;
    address owner;
    
    constructor (
        uint _maxCandidates
    ) public {
        require(_maxCandidates >= 2)
        maxCandidates = _maxCandidates;
        ended = false;
        owner = msg.sender;
    }
    
    event NewCandidate (
        uint indexed _candidateId,
        string _name,
        uint _votes
    );
    
    event VoteCast (
        uint indexed _candidateId
    );
    
    function addCandidate(string memory name) public {
        require(!ended);
        require(msg.sender == owner);
        require(candidatesCount < maxCandidates);
        
        candidates[candidatesCount] = Candidate(candidatesCount, name, 0);
        candidatesCount++;
        emit NewCandidate(
            candidates[candidatesCount-1].id, 
            candidates[candidatesCount-1].name, 
            candidates[candidatesCount-1].votes
        );
    }
    
    function castVote(uint id) public {
        require(!ended);
        require(id >= 0 && id < candidatesCount);
        require(!voters[msg.sender]);
        
        voters[msg.sender] = true;
        candidates[id].votes++;
        emit VoteCast(id);
    }
    
    function endVoting() public {
        require(!ended);
        ended = true;
    }
    
    function getCandidate(uint id) public view returns (uint, string memory, uint) {
        require(id >= 0 && id < candidatesCount);
        Candidate memory candidate = candidates[id];
        return (candidate.id, candidate.name, candidate.votes);
    }
    
    function getName(uint id) public view returns (string memory) {
        require(id >= 0 && id < candidatesCount);
        return candidates[id].name;
    }
    
    function getVotes(uint id) public view returns (uint) {
        require(id >= 0 && id < candidatesCount);
        return candidates[id].votes;
    }
}
