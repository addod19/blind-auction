# Solidity Blind Auction Contract

Blind auction is a type of auction which uses Hyperledger Fabric to run an auction where bids are kept private until the auction period is over. Instead of displaying the full bid on the public ledger, buyers can only see hashes of other bids while bidding is underway. This prevents buyers from changing their bids in response to bids submitted by others. After the bidding period ends, participants reveal their bid to try to win the auction. The participants participating in the auction verify that a revealed bid matches the hash on the public ledger. Whichever has the highest bid wins.

## How it works

A user that wants to sell one item can use the smart contract to create an auction. The auction is stored on the channel ledger and can be read by all channel members. The auctions created by the smart contract are run in three steps:
- [ ] Each auction is created with the status **open**. While the auction is open, buyers can add new bids to the auction. The full bids of each buyer are stored in the implicit private data collections of their organization. After the bid is created, the bidder can submit the hash of the bid to the auction. A bid is added to the auction in two steps because the transaction that creates the bid only needs to be endorsed by a peer of the bidders organization, while a transaction that updates the auction may need to be endorsed by multiple organizations. When the bid is added to the auction, the bidder's organization is added to the list of organizations that need to endorse any updates to the auction.
- [ ] The auction is **closed** to prevent additional bids from being added to the auction. After the auction is closed, bidders that submitted bids to the auction can reveal their full bid. Only revealed bids can win the auction.
- [ ] The auction is **ended** to calculate the winner from the set of revealed bids. All organizations participating in the auction calculate the price that clears the auction and the winning bid. The seller can end the auction only if all bidding organizations endorse the same winner and price.


This project was bootstrapped with `truffle init`

## Available Scripts

In the project directory, you can run:

### `ganache-cli`
### `truffle compile`
### `truffle deploy`
### `truffle console` to interact with your smart contract

### Screenshot
deployed contract `abi`
![Screenshot from 2022-02-14 11-33-37](https://user-images.githubusercontent.com/46388113/153857395-6fd3dd0e-d15e-429b-9acd-77ad7fbcba47.png)

`ganache-cli`
![Screenshot from 2022-02-14 11-37-05](https://user-images.githubusercontent.com/46388113/153857742-6502b82c-b792-4f70-a75f-a86d9806d585.png)

