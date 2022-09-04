require("@nomicfoundation/hardhat-chai-matchers");
require("@nomiclabs/hardhat-ethers");
require('dotenv').config({ path: ".env" });

/** @type import('hardhat/config').HardhatUserConfig */

const API_URL = process.env.API_URL;
const PRIVATE_KEY = process.env.PRIVATE_KEY;


module.exports = {
  solidity: "0.8.9",
  defaultNetwork: "goerli",
  networks: {
     goerli: {
        url: API_URL,
        accounts: [`0x${PRIVATE_KEY}`]
     }
  },
};
