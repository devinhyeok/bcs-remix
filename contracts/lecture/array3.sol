// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ARRAY {
    string[] letters;
    string[7] letters2;

    function pushLetters(string memory letter ) public {
        letters.push(letter);
    }

    function popLetters() public {
        letters.pop();
    }

    function getLetter(uint _n) public view returns(string memory) {
        return letters[_n-1];
    }

    function setLetter(uint _n, string memory _s) public {
        letters[_n-1] = _s;
    }

    function getLetter2(uint _n) public view returns(string memory) {
        return letters2[_n-1];
    }

    function setLetter2(uint _n, string memory _s) public {
        letters2[_n-1] = _s;
    }

    function getLetter() public view returns(uint) {
        return letters.length;
    }
}