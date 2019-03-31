pragma solidity ^0.5.0;

import "./ERC20.sol";
import "./ERC20Mintable.sol";
import "./ERC20Burnable.sol";



  contract VirtualCurrency is ERC20, ERC20Mintable, ERC20Burnable  {


  string public name = 'VirtualCurrency';
  uint public decimals = 0;
  string public symbol = 'VCC';

}
