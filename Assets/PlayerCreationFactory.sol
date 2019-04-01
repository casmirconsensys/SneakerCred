pragma solidity ^0.5.0;

Contract PlayerCreationFactory {
  Struct Player {
    string name;
    uint badge;
  }
  mapping (address => Player) public players;

  function getPlayer(address _id)
    public
    returns (string name, uint badge)
   {
    player memory p = players[id];
    return (p.name, p.badge);
  }
}
