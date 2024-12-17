// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MAPPING4 {
    struct Student {
        string name;
        uint number;
    }

    mapping(string => Student[]) StudentList;

    function setStudent(string memory _s, Student memory _student) public {
        StudentList[_s].push(_student);
    }

    function setStudent2(string memory _s, uint _n, Student memory _student) public {
        StudentList[_s][_n-1] = _student;
    }
}