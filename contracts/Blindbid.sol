// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Blindbid {
  // Varialbles

   // Modifiers

  modifier onlyBefore(uint _time) {
    require(block.timestamp < _time);
    _;
  }

  modifier onlyAfter(uint _time) {
    require(block.timestamp > _time);
    _;
  }

  // Constructor function
  constructor(uint _biddingTime, uint _revealTime, address payable _beneficiary) {
    beneficiary = _beneficiary;
    biddingEnd = block.timestamp + _biddingTime;
    revealTime = biddingEnd + _revealTime;
  }

  function bid() {

  }

}