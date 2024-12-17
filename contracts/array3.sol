// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ARRAY {
    uint a;
    string b;

    uint[] numbers;

    function pushNumber(uint _a) public {
        numbers.push(_a);
    }

    function popNumber() public {
        numbers.pop();
    }

    function getNumbers() public view returns(uint[] memory) {
        return numbers;
    }

    function getNumber(uint _n) public view returns(uint) {
        return numbers[_n-1];
    }

    function changeNumber(uint _n, uint _m) public {
        numbers[_n-1] = _m;
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