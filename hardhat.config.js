




require("@nomicfoundation/hardhat-toolbox");


const FORK_FUJI = true;
const FORK_MAINNET = false;
let forkingData = undefined;

if (FORK_MAINNET) {
  forkingData = {
    url: "https://api.avax.network/ext/bc/C/rpcc",
  };
}
if (FORK_FUJI) {
  forkingData = {
    url: "https://api.avax-test.network/ext/bc/C/rpc",
  };
}

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.9",
  networks: {
    hardhat: {
      gasPrice: 225000000000,
      chainId: !forkingData ? 43112 : undefined, //Only specify a chainId if we are not forking
      forking: forkingData
    },
    fuji: {
      url: 'https://api.avax-test.network/ext/bc/C/rpc',
      gasPrice: 225000000000,
      chainId: 43113,
      accounts:['084f2f34b37fd0d3319ad9841f354887804c2abbd6497384c3e7b88148e4a4ad'] 
    },
    mainnet: {
      url: 'https://api.avax.network/ext/bc/C/rpc',
      gasPrice: 225000000000,
      chainId: 43114,
      accounts: ['084f2f34b37fd0d3319ad9841f354887804c2abbd6497384c3e7b88148e4a4ad']
    }
  },
  etherscan: {
    apiKey: "2IDQN91FMJ8QIDAYE76SFP2SYTWRIVVMZY",
  },
}

