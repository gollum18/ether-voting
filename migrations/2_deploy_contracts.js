var Election = artifacts.require("./Election.sol");

module.exports = function(deployer) {
    let date = new Date();
    date.setDate(date.getDate() + 1);
    deployer.deploy(Election, 5, Math.floor(date.getTime() / 1000));
}