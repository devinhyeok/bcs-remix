// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract STRUCT2 {
    struct student {
        // 이름, 학번, 집주소, PF
        string name;
        uint number;
        string addr;
        bool pf;
    }

    student[] Class;

    function pushClass(student memory _s) public {
        Class.push(_s);
    }

    function getStudent(uint _n) public view returns(string memory, uint) {
        return (Class[_n].name, Class[_n].number);
    }

    function setAddr(uint _n, string memory _addr) public {
        Class[_n-1].addr = _addr;
    }
}