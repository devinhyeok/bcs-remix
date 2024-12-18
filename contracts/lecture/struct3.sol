// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract STRUCT3 {
    struct student {
        string name;
        uint number;
        string[] classes;
    }

    student s1;

    function setS1_1(student memory _s1) public {
        s1 = _s1;
    }

    function setS1_2(string memory _name, uint _number, string[] memory _classes) public {
        s1 = student(_name, _number, _classes);
    }
}