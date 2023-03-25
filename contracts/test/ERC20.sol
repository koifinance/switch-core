// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import '../MuteSwitchERC20.sol';

contract ERC20 is MuteSwitchERC20 {
    constructor(uint _totalSupply) {
        _mint(msg.sender, _totalSupply);
    }
}
