// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    struct Person {
        string name;
        uint256 age;
        bool isActive;
        address walletAddress;
    }

    uint256 public favouriteNumber;

    mapping(string => bool) public nameToIsActive;

    Person public pat = Person({
        name: "Sebastian",
        age: 54,
        isActive: false,
        walletAddress: 0x6AdDB767E9D0F4A0B538a4aCEf5749Ad3Dad6FD1
    });

    Person[] public allUsersDetails;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
        retrieve();
    }

    function addPerson(string memory _name, uint256 _age, bool _isActive, address _walletAddress) public {
        Person memory newPerson = Person(_name, _age, _isActive, _walletAddress);
        allUsersDetails.push(newPerson);
        nameToIsActive[_name] = _isActive;
    }

    function retrieve() public view returns (uint256) {
        return favouriteNumber;
    }
}