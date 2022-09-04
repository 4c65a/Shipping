const hre = require("hardhat");

async function main() {
  const Shipping = await hre.ethers.getContractFactory("Shipping");
  const deployedShipping = await Shipping.deploy();

  //await Shipping.deployed();

  console.log( "Contract Address:", deployedShipping.address);

}



main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });