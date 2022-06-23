require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks: {
    rinkeby: {
      // http url from node service  website service
      url: "https://eth-rinkeby.alchemyapi.io/v2/9sxNXjPMH-gufqHENcMJCWoA0s-Fw8EY",
      // wallet private key
      accounts: [
        "89d4ba8eda9b0706a5746e5e1d16c849de90a43a022fb6f6f277478565ec244a",
      ],
    },
  },
};
