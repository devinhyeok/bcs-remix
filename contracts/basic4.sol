// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract BASIC4 {
    bytes a;
    bytes1 b;
    bytes2 c;
    bytes3 d;
    bytes32 e;

    function setA(bytes memory _a) public {
        a = _a;
    }

    function setB(bytes1 _b) public {
        b = _b;
    }

    function setC(bytes2 _c) public {
        c = _c;
    }

    function setD(bytes3 _d) public {
        d = _d;
    }

    function getABCD() public view returns (bytes memory, bytes1, bytes2, bytes3, bytes32){
        return (a, b, c, d, e);
    }
}