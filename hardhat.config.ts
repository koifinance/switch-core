require("@nomicfoundation/hardhat-chai-matchers");
require("@matterlabs/hardhat-zksync-verify");

var export_m = {}

if(process.env.NODE_ENV == "test"){
  require("@nomicfoundation/hardhat-toolbox");
  require("@nomiclabs/hardhat-ethers");

  export_m = {
    solidity: {
      version: "0.8.12",
    },
    networks: {
      hardhat: {
        allowUnlimitedContractSize: true
      },
    },
  };

} else {
  require("@matterlabs/hardhat-zksync-deploy");
  require("@matterlabs/hardhat-zksync-solc");

  export_m = {
    zksolc: {
      version: '1.3.5',
      compilerSource: 'binary',
      settings: {
          optimizer: {
            enabled: true,
          },
      }
    },
    defaultNetwork: "zkSyncTestnet",
    solidity: {
      version: "0.8.12",
    },
    networks: {
      zkSyncTestnet: {
        url: process.env.NODE_ENV == "test-zk" ? "http://localhost:3050" : "https://zksync2-testnet.zksync.dev",
        ethNetwork: 'goerli',
        zksync: true,
        allowUnlimitedContractSize: true
      },
      zkSyncMainnet: {
        url: "https://zksync2-mainnet.zksync.io",
        ethNetwork: "mainnet",
        zksync: true,
        allowUnlimitedContractSize: true,
        verifyURL: 'https://zksync2-mainnet-explorer.zksync.io/contract_verification'
      },
      hardhat: {
        zksync: true,
        allowUnlimitedContractSize: true
      },
    },

  };
}


module.exports = export_m
