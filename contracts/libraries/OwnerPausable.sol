// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./Ownable.sol";
import "./Pausable.sol";

/// @notice A Pausable contract that can only be toggled by the Owner.
contract OwnerPausable is Ownable, Pausable {
    /// @notice Pauses the contract.
    function pause() public onlyOwner {
        Pausable._pause();
    }

    /// @notice Unpauses the contract.
    function unpause() public onlyOwner {
        Pausable._unpause();
    }
}
