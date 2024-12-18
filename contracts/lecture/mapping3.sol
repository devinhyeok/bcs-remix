// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MAPPING3 {
    mapping(string => mapping(string=>uint)) Score;

    function setScore(string memory _s1, string memory _s2, uint _score) public {
        Score[_s1][_s2] = _score;
    }

    function getScore(string memory _s1, string memory _s2) public view returns(uint) {
        return Score[_s1][_s2];
    }
}