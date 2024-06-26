// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract Volt is ERC20, ERC20Burnable, ERC20Permit {
    constructor() ERC20("Volt", "VOLT") ERC20Permit("Volt") {}

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
}