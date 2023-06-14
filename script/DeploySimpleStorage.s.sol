// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import {Script} from 'forge-std/Script.sol';
import {SimpleStorage} from '../src/SimpleStorage.sol';

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        // Start using local/test/main network
        vm.startBroadcast();

        SimpleStorage simpleStorage = new SimpleStorage();
        

        // Everything should end by here
        vm.stopBroadcast();

        return simpleStorage;
    }
}