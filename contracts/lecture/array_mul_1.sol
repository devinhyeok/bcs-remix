// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract MUlTI_DIM {
    uint[] numbers;
    uint[5] numbers2;

    uint[][] numbers_1;
    uint[][5] numbers_2;
    uint[5][] numbers_3;
    uint[5][5] numbers_4;

    function pushNumber(uint _n) public {
        numbers_1.push([_n]);
    }

    function pushNumber1(uint[] memory _n) public {
        numbers_1.push(_n);
    }

    function pushNumber2(uint idx, uint[] memory _n) public {
        numbers_2[idx-1] = _n;
    }

    function pushNumber3(uint[5] memory _n) public {
        numbers_3.push(_n);
    }

    function pushNumber4(uint idx, uint[5] memory _n) public  {
        numbers_4[idx-1] = _n;
    }

    function getLength() public view returns(uint, uint, uint, uint) {
        return (numbers_1.length, numbers_2.length, numbers_3.length, numbers_4.length);
    }

    function getNumbers() public view returns(uint[][] memory, uint[][5] memory, uint[5][] memory, uint[5][5] memory) {
        return(numbers_1, numbers_2, numbers_3, numbers_4);
    }
}