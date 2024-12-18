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
        uint count;

        while(_n > 0) {
            _n /= 10;
            count++;
        }

        return count;
    }

    function while_3(uint _n) public pure returns(uint) {
        uint count;

        while(_n > 0) {
            _n /= 8;
            count++;
        }
    }
}