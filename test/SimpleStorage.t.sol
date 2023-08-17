// SPDX-License-Identifier: MIT License
pragma solidity 0.8.19;

import {SimpleStorage} from "../src/SimpleStorage.sol";
import {Test} from "forge-std/Test.sol";

/// @notice Simple test for SimpleStorage contract in local environment

contract SimpleStorageTest is Test {
    SimpleStorage public SimpleStorageContract;
    uint256 constant favoriteNumber = 8;
    string constant _name = "Gabi Maverick";

    function setUp() external {
        SimpleStorageContract = new SimpleStorage();
    }

    /// @dev test to make sure store function working properly
    function testStoreFunction() public {
        SimpleStorageContract.store(favoriteNumber);
        assertTrue(favoriteNumber == SimpleStorageContract.retrieve());
    }

    /// @dev test to make sure addPerson function working properly
    function testAddPerson() public {
        SimpleStorageContract.addPerson(_name, favoriteNumber);
        // access to the mapping to check the number of the name given
        uint256 expetedNumber = SimpleStorageContract.nameToFavoriteNumber(_name);
        assertTrue(expetedNumber == favoriteNumber);
    }
}
