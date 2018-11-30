pragma solidity ^0.4.23;
// Imports
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";
// Main token smart contract
contract MyToken is ERC20Mintable {

  string public name;
  string public symbol;
  uint32 public decimals;

  constructor (string _name, string _symbol, uint32 _decimals) public {
     name = _name;
     symbol = _symbol;
     decimals = _decimals;
  }

}
