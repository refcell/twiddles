// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.11;

import {DSTestPlus} from "./utils/DSTestPlus.sol";

import {InlineEvents} from "../InlineEvents.sol";

contract InlineEventsTest is DSTestPlus {
    InlineEvents ievents;

    function setUp() public {
        ievents = new InlineEvents();
    }

    function testInlineAssignment() public {
        assert(ievents.one() == 1);
        ievents.setInline();
        assert(ievents.one() == 0);
    }
}
