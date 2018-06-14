pragma solidity ^0.4.4;

contract HelloWorld {
  function sayHello() public returns (string) {
      return ("Hello World");
  }

  function echo(string name) public constant returns (string) {
    return name;
  } 
}
