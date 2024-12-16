// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract ARRAY {
    uint[5] numbers;

    function changeNumber(uint _a, uint _b) public {
        numbers[_a-1] = _b;
    }

    function getNumber(uint _a) public view returns(uint) {
        return numbers[_a-1];
    }

    function getNumbers() public view returns(uint[5] memory) {
        return numbers;
    }

    function getLength() public view returns(uint) {
        return numbers.length;
    }

    function DELETE1() public {
        delete numbers;
    }

    function DELETE2(uint _n) public {
        delete numbers[_n-1];
    }
}