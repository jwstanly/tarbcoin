const TarbCoin = artifacts.require("TarbCoin");

module.exports = function(deployer) {
  deployer.deploy(TarbCoin);
};
