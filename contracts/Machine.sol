// SPDX-License-Identifier: MIT
pragma solidity 0.7.0;
import "./Storage.sol";

contract Machine {
    Storage public s;

    constructor(Storage addr) {
        s = addr;
    }

    function saveValue(uint256 x) public returns (bool) {
        s.setValue(x);
        return true;
    }

    function getValue() public view returns (uint256) {
        return s.val();
    }
}
