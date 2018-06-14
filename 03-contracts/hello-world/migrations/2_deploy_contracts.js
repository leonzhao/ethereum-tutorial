var HelloWorld = artifacts.require("../contracts/HelloWorld")

module.exports = function (deployer) {
    deployer.deploy(HelloWorld)
}