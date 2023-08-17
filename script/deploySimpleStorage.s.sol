// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

/// @notice This contract is an script to deploy the contract SimpleStorage.sol
/// @dev use this to deploy the contract -> forge script script/deploySimpleStorage.s.sol
/// @dev in u dont pass an rpc-url the contract it will be deployed on localhost
/// @dev forge script script/deploySimpleStorage.s.sol --rpc-url [] --broadcast --private-key []

contract deploySimpleStorage is Script {
    /// @dev this function is to deploy our smart contract
    function run() external returns (SimpleStorage) {
        // Link from Foundry ➡ https://book.getfoundry.sh/cheatcodes/start-broadcast?highlight=startBr#signature
        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}
