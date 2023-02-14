const LoanManager = artifacts.require("LoanManager")
const OfferManager = artifacts.require("OfferManager")
const PoolManager = artifacts.require("PoolManager")
const FeeManager = artifacts.require("FeeManager")

module.exports = async function(deployer, network, accounts) {
    if (network == "test" || network == "test2") return;
    // return

    await deployer.deploy(LoanManager)
    await deployer.deploy(OfferManager)
    await deployer.deploy(PoolManager)
    await deployer.deploy(FeeManager)
};