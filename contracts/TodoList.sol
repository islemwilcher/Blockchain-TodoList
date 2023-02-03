// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract TodoList {
  // state variable 
  // represent the state of the smart contract on the blockchain
  uint public taskCount = 0;

// task modele
  struct Task {
    uint id;
    string content;
    bool complited;  
  }

  mapping(uint => Task) public tasks;

  constructor() public {
    createTask("Boucenina seif el islem: seifdev.com");
  }

  function createTask(string memory _content) public {
    taskCount ++;
    tasks[taskCount] = Task(taskCount, _content, false);
  }





}