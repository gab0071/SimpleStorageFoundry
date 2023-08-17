// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

/*
    @author Gabi Maverick 👾 
    @notice This contract is a simple storage to practice solidity 
*/

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    // @notice First the public functions
    function store(uint256 _favoriteNumber) external {
        myFavoriteNumber = _favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) external {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    // @notice Then the public view functions
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }
}
