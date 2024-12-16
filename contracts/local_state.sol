// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract STATE_LOCAL {
    uint a;
    uint b;

    function add(uint _a, uint _b) public pure returns(uint) {
        uint _c;
        return _a + _b + _c;
    }

    function add2(uint _a) public view returns(uint) {
        return a + _a;
    }

    function setA(uint _a) public {
        a = _a;
    }
}