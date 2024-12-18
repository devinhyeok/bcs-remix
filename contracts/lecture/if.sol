// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract IF {
    function oddEven (uint _n) public pure returns(bool) {
        if (_n % 2 == 0) 
            return true;
        else
            return false;
    }

    function tri(uint _n) public pure returns(string memory) {
        if (_n % 3 == 0)
            return "a";
        else if (_n % 3 == 1)
            return "b";
        else
            return "c";
    }

    function AND(uint _n) public pure returns(string memory) {
        if (_n >= 100 && _n < 1000)
            return "b";
        else if (_n >= 1000)
            return "a";
        else
            return "c";
    }

    function OR(uint _n) public pure returns(bool) {
        if (_n % 3 == 0 || _n % 2 == 0)
            return true;
        else
            return false;
    }

    function AND2 (uint _n) public pure returns(string memory) {
        if (_n >= 100 && _n % 2 == 0)
            return "a";
        else if (_n >= 50 && _n % 2 == 1)
            return "b";
        else 
            return "c";
    }

    function hun (uint _n) public pure returns(bool) {
        if (_n >= 100)
            return true;
        else
            return false;
    }

    function thou(uint _n) public pure returns(string memory) {
        if (_n >= 1000)
            return "a";
        else if (_n >= 100)
            return "b";
        else
            return "c";
    }
}