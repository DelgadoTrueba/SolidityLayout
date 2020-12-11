// SPDX-License-Identifier: MIT
pragma solidity 0.7.0;

contract HelloWorld {
    string name = "hola";

    function greeding() external view returns (string memory) {
        return name;
    }
}
