// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract WHILE {
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

contract FOR {
    uint [] numbers;

    function setNumbers(uint _n) public {
        for (uint i = _n + 1; i > 0; i--){
            numbers.push(i - 1);
        }
    }

    function getNumbers() public view returns(uint[] memory) {
        return numbers;
    }
}