pragma solidity ^0.5.0;

contract PlayerToken {

    constructor() public {


    }


    struct Player {
      string name;
      uint badge;
      uint boosts;
    }
mapping (address => Player) public players;

function getPlayer(address _id)
  public
  view
  returns (string memory name, uint badge)
 {
  Player memory p = players[_id];
  return ( p.name, p.badge);
}
}
