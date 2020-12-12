// SPDX-License-Identifier: MIT
pragma solidity 0.7.0;

contract HelloWorld {
    event NewName(string name);

    string public name = "hola";

    function greeding() external view returns (string memory) {
        return name;
    }

    function setName(string memory _name) public {
        name = _name;
        emit NewName(_name);
    }
}
