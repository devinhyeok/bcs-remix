// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract GLOBAL {
    // 142
    function getBlock() public view returns(uint) {
        return block.number;
    }

    function getTime() public view returns(uint) {
        return block.timestamp;
    }

    function getHash(uint _n) public view returns(bytes32) {        
        return blockhash(_n);
    }
}