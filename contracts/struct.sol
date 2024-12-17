// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract STRUCT {
    uint a;
    string b;
    bytes1 c;
    bytes d;

    struct user {
        uint number;
        string name;
    }

    user u1;
    user u2;

    function setA(uint _a) public {
        a = _a;
    }

    function getA() public view returns(uint) {
        return a;
    }

    function setU1(uint _number, string memory _name) public {
        u1 = user(_number, _name);
    }

    function setU1_2(user memory _u1) public {
        u1 = _u1;
    }

    function setU1_name(string memory _name) public {
        u1.name = _name;
    }

    function setU1_3(uint _number, string memory _name) public {
        u1 = user({
            number : _number,
            name : _name
        });
    }

    function setU2(uint _number, string memory _name) public {
        u2 = user(_number, _name);
    }

    // 번호, 이름, bytes3(id), bool | staff
    struct staff {
        uint number;
        string name;
        bytes3 id;
        bool b;
    }

    staff s1;

    function setS1(uint _number, string memory _name, bytes3 _id, bool _b) public {
        s1 = staff(_number, _name, _id, _b);
    }

    function setS1_2(staff memory _s1) public {
        s1 = _s1;
    }

    function setS1_3(uint _number, string memory _name, bytes3 _id, bool _b) public {
        s1 = staff({
            number: _number,
            name: _name,
            id: _id,
            b: _b
        });
    }

    function setS1_name(string memory _name) public {
        s1.name = _name;
    }

    function getS1() public view returns (staff memory) {
        return s1;
    }

    function getS1_2() public view returns(string memory, bytes3) {
        return (s1.name, s1.id);
    }
}