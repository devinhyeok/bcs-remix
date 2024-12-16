// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Basic3 {
    uint a;
    string b;

    function setA(uint _a) public {
        a = _a;
    }

    function getA() public view returns(uint) {
        return a;
    }

    function setB(string memory _b) public {
        b = _b;
    }

    function getB() public view returns(string memory) {
        return b;
    }
}