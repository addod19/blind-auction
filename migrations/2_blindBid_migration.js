const BlindBid = artifacts.require("BlindBid");

module.exports = function (deployer) {
  deployer.deploy(BlindBid, 180, 120, "0x9D564eF0e6F18deb6c48D3b6f185DBAD8D707D1c");
}
