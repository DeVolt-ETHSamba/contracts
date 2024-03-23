//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {console} from "forge-std/console.sol";
import {Volt} from "@contracts/token/ERC20/Volt.sol";

contract TestERC20Deroll is Test {
    Volt volt;

    address guest = address(1);
    address application = address(2);

    function setUp() public {
        volt = new Volt{salt: bytes32(abi.encode(1596))}();
    }

    function testMintWithERC20Deroll() public {
        vm.prank(application);
        volt.mint(guest, 100);
        assertTrue(volt.balanceOf(guest) == 100);
    }
}
