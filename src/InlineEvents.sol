// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.11;

contract InlineEvents {
    /// @dev Variable to set inline
    /// @dev Hot store
    uint256 public one = 1;

    event SetVariableInline(uint256 _one, uint256 notOne);

    /// @dev An event-inline variable assignment
    function setInline() public {
        emit SetVariableInline(one, one = 0);
    }
}
