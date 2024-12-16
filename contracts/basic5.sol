// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract BASIC5 {
    bool isitFun;

    function Fun() public {
        isitFun = true;
    }

    function notFun() public {
        isitFun = false;
    }
}