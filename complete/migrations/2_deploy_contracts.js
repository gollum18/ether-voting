// Step 14: Write code to deploy the contract
var Election = artifacts.require("./Election.sol");

module.exports = function(deployer) {
    deployer.deploy(Election, 5);
}
