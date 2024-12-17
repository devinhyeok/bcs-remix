// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract MAPPING {
    mapping(uint => string) List;

    function setList(uint _number, string memory _name) public {
        List[_number] = _name;
    }

    function getList(uint _number) public view returns(string memory) {
        return List[_number];
    }

    function deleteList(uint _number) public {
        delete List[_number];
    }
}