// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract INHYEOK {
    uint a; // 숫자형 변수 a
    uint b;
    uint c;

    function setA(uint _a) public {
        a = _a;
    }

    function setB(uint _b) public {
        b = _b;
    }

    function setABC(uint _a, uint _b, uint _c) public {
        a = _a;
        b = _b;
        c = _c;
    }

    function getA() public view returns (uint) {
        return a;
    }

    function getB() public view returns (uint) {
        return b;
    }

    function getAB() public view returns (uint, uint) {
        return (a, b);
    }

    function getABC() public view returns (uint, uint, uint) {
        return (a, b, c);
    }
}