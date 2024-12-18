// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract SORTING {
    uint[] numbers = [1, 3, 7, 4, 11, 2];

    function descending() public view returns (uint[] memory) {
        uint[] memory _numbers = numbers;
        for(uint i = 0; i < _numbers.length; i++){
            for(uint j = i + 1; j < numbers.length; j++) {
                if (_numbers[i] < _numbers[j]) {
                    (_numbers[i], _numbers[j]) = (_numbers[j], _numbers[j]);
                }
            }
        }

        return _numbers;
    }

    function ascending() public view returns (uint[] memory) {
        uint[] memory _numbers = numbers;
        for (uint i = 0; i < _numbers.length - 1; i++) {
            for (uint j = i + 1; j < _numbers.length; j++) {
                if (_numbers[i] > _numbers[j]) {
                    (_numbers[i], _numbers[j]) = (_numbers[j], _numbers[i]);
                }
            }
        }
        return _numbers;
    }
}

contract ARRAY_LOCAL {
    // uint[4] numbers;
    uint[3] numbers1 = [5,10,15];
    uint[] numbers2 = [4,8,12,16];
    uint[] numbers3 = [4,8,12,16,20];

    function setArray(uint _a, uint _b, uint _c, uint _d) public pure returns(uint[4] memory) {
        uint[4] memory numbers;
        numbers[0] = _a;
        numbers[1] = _b;
        numbers[2] = _c;
        numbers[3] = _d;

        return numbers;
    }

    function setArray2(uint _n) public pure returns(uint[] memory) {
        uint[] memory numbers = new uint[](_n);
        return numbers;
    }

    function setArray3(uint _n) public view returns(uint[3] memory) {
        uint[3] memory _numbers1 = numbers1;
        _numbers1[1] = _n;

        return _numbers1;
    }

    function setArray4(uint _n) public view returns(uint[] memory) {
        uint[] memory _numbers2 = numbers2;
        _numbers2[1] = _n;

        return _numbers2;
    }

    function setArray5() public view returns(uint[] memory) {
        uint[] memory _numbers2 = numbers2;
        //...
        _numbers2 = numbers3;
        return _numbers2;
    }
}