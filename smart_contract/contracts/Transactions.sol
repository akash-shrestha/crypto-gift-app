//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;
 
 // Name same as file, contract serves as class in OOP
contract Transactions {      
  uint256 transactionCount;
  
  event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);    // A function

  // Defining a structure. Like object. Not defining a object but blueprint for it. Its defining the property that out transactions need to have
  struct TransferStruct {     
    address sender;
    address receiver;
    uint amount;
    string message;
    uint timestamp;
    string keyword;
  }

  // Array of transction. Array to store all our transactions
  TransferStruct[] transactions;

// memory means its just a specific data stored in the memory of the transaction, its additional data we are passing through the blockchain
function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
  transactionCount += 1;
  // just recording, not doing the transaction
  // we get the msg and block object from the blockchain
  transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));
  // we emit the event to do the real transaction
  emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
}

// Querying means you can call any function that is marked as view or pure and there is no gas cost
  function getAllTransactions() public view returns (TransferStruct[] memory) {
    return transactions;
  }

  function getTransactionCount() public view returns (uint256) {
   return transactionCount;
  }


}