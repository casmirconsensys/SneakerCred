pragma solidity ^0.5.0;

Contract PlayerCreationFactory {

mapping(address => address []) created;

function createPlayer(uint256 _initialAmount) public returns (address) {
  Player newPlayer = newPlayer(_initialAmount);
  crated[msg.sender].push(address(newPlayer));
  newPlayer.transfer(msg.sender, _initialAmount);
  return address(newPlayer);
}


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
