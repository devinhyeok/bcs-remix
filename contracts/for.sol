// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract FOR {
    function loop1() public pure returns(uint, uint) {
        uint a;
        uint i;

        for(uint i = 0; i < 5; i++) {
            a = a + i;
            // a += i;
        }

        return (a,i);
    }

    uint[] numbers;

    function loop2(uint _n) public {
        for(uint i = 1; i <= _n; i++) {
            numbers.push(i);
        }
    }

    function loop3(uint _n) public {
        for(uint i = _n; i > 0; i--) {
            numbers.push(i);
        }
    }

    function onlyOdd(uint _n) public {
        for(uint i = 1; i <= _n; i += 2) {
            numbers.push(i);
        }
    }


    function add2(uint _n) public {
        for(uint i = 0; i < numbers.length; i++) {
            numbers[i] += 2;
        }
    }

    function getNumbers() public view returns(uint[] memory) {
        return numbers;
    }
}