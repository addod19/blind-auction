// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract BlindBid {
  // Varialbles

  struct Bid {
    bytes32 blindedBid;
    uint deposit;
  }

  address payable public beneficiary;
  uint public biddingEnd;
  uint public revealEnd;
  bool public ended;

  mapping(address => Bid[]) public bids;

  address public highestBidder;
  uint public highestBid;

  mapping(address => uint) public pendingReturns;

  // Event
  event AuctionEnded(address winner, uint highestBid);

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
    revealEnd = biddingEnd + _revealTime;
  }

  function withdraw() public {
    uint amount = pendingReturns[msg.sender];
    if (amount > 0) {
      pendingReturns[msg.sender] = 0;

      payable(msg.sender).transfer(amount * (1 ether));
    }
  }

  function auctionEnd() public payable onlyAfter(revealEnd) {
    require(!ended);
    emit AuctionEnded(highestBidder, highestBid);
    ended = true;
    beneficiary.transfer(highestBid * (1 ether));
  }

  function bid() {

  }

}