const Util = artifacts.require("Util");
const TarbCoin = artifacts.require("TarbCoin");


module.exports = function(deployer) {
  deployer.deploy(Util)
    .then(() => deployer.deploy(TarbCoin));
};
