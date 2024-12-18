// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ADDRESS {
    address a;
    address payable b;

    function setB(address payable _b) public {
        b = _b;
    }

    function getAddress() public view returns(address) {
        return address(this);
    }

    function getAddressBalance() public view returns(uint) {
        return address(this).balance;
    }

    function getBalance(address _addr) public view returns(uint) {
        return _addr.balance;
    }

    function deposit() public payable returns(uint) {
        return msg.value;
    }

    function sendMoney(address payable _rec) public {
        _rec.transfer(0.1 ether);
    }
}

// 보낼 주소 (나)
// 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4

// 받을 주소
// 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2

// 컨트랙트 주소
// xx