// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;


contract SimpleCalculator {
    function add(uint256 x, uint256 y) pure public returns(uint256){
        return x + y;
    }

    function sub(uint256 x, uint256 y) pure public returns(uint256){
        return x - y;
    }

    function multi(uint256 x, uint256 y) pure public returns(uint256){
        return x * y;
    }

    function divide(uint256 x, uint256 y) pure public returns(uint256){
        return x / y;
    }

    function expo(uint256 x, uint256 y) pure public returns(uint256){
        return x ** y;
    }

    function modulo(uint256 x, uint256 y) pure public returns(uint256) {
        return x % y;
    }

    function getBalance(address _address) view public returns(uint256){
        return _address.balance;
    }

    function getTxOrigin() view public returns(address) {
        return tx.origin;
    }

    function getMsgSender() view public returns(address) {
        return msg.sender;
    }

    function getBlockNumber() view public returns(uint256) {
        return block.number;
    }

    function getBlockTimeStamp() view public returns(uint256) {
        return block.timestamp;
    }

    function getChainId() view public returns(uint256) {
        return block.chainid;
    }
}