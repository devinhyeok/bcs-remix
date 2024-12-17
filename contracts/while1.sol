// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract WHILE {
    function while_1(uint _n) public pure returns(uint) {
        uint a = 1;

        while(_n > a * 2) {
            a *= 2;
        }

        return a;
    }

    function while_2(uint _n) public pure returns(uint) {
        uint a = 1;
        uint count = 1;

        while(_n > a * 10) {
            a *= 10;
            count++;
        }

        return count;
    }
}