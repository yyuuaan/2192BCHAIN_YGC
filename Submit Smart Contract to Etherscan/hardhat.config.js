/** @type import('hardhat/config').HardhatUserConfig */

require('dotenv').config();
require("@nomiclabs/hardhat-ethers");
require("@nomiclabs/hardhat-etherscan");

const { API_URL, PRIVATE_KEY } = process.env;
const ETHERSCAN_API_KEY = process.env.ETHERSCAN_API_KEY;

module.exports = {
  solidity: "0.8.24",
  defaultNetwork: "sepolia",
  networks: {
    hardhat: {},
    sepolia: {
      url: "https://eth-sepolia.g.alchemy.com/v2/i7JPzUakLUcgVS9slE_huCsVM-hF3nw0",
      accounts: ['6172d419a74838a89ba0913bc0f72ec284425b604c85d1b2ac3b121eae8aa6e6']
    }
  },
  etherscan: {
    apiKey: ETHERSCAN_API_KEY
  }
};
