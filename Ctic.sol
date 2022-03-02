// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract ComodoToken is Ownable, ERC20Burnable {

    /**
     * @dev Constructor.
     * @param wallet owner's wallet of the token
     * @param totalSupply total supply of tokens in lowest units (depending on decimals)
     */
    constructor(address wallet, uint256 totalSupply) Ownable() ERC20("USD TETHER","USDT") {
        _mint(wallet, totalSupply * 10 ** 18);
        transferOwnership(wallet);
    }
}