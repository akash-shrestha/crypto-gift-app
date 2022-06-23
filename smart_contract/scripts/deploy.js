// the function responsible for deploying the contract
const main = async () => {
  // class or function factory that generate the instances of that specific contract
  const Transactions = await hre.ethers.getContractFactory("Transactions");
  const transactions = await Transactions.deploy();

  await transactions.deployed();

  console.log("Transaction deployed to:", transactions.address);
};

const runMain = async () => {
  try {
    await main();
    // 0 means process ran successfully
    process.exit(0);
  } catch (error) {
    console.log(error);
    process.exit(1);
  }
};

runMain();
