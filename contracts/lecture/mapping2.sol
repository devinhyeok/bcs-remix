// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MAPPING2 {
    struct student {
        string name;
        bytes3 id;
    }

    mapping(uint => student) students;

    function setStudent(uint _n, student memory _s) public {
        students[_n] = _s;
    }

    function getStudnet(uint _n) public view returns(student memory) {
        return students[_n];
    }
}