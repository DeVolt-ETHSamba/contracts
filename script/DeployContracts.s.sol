// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {Volt} from "@contracts/token/ERC20/Volt.sol";

contract DeployContracts is Script {
    function run() external {
        bytes32 _salt = bytes32(abi.encode(1596));
        vm.startBroadcast();
        Volt volt = new Volt{salt: _salt}();
        vm.stopBroadcast();
        console.log(
            "Volt address:",
            address(volt),
            "at network:",
            block.chainid
        );
    }
}
