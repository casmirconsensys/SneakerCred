pragma solidity >=0.4.24 <0.6.0;

Contract Badges {

  Struct Player {
    uint rank;
    uint boost;
    uint number;
    string fName;
    string lName;
  }
  mapping (address => players) players;
  address[]public player Accts;
}

function setPlayer(address _address, uint _rank, uint _boost, uint _number; string _fName, string _lName) public {
  const player = players[_address];
  player.rank = _rank;
  player.boost = _boost;
  player.number = _number;
  player.fName = _fName;
  player.lName = _lName;
  playerAccts.push(_address)-1;
}

function getPlayers() view public returns (address[]) {
  return playerAccts;
}
function getPlayers() view public returns (address[]) {
  return playerAccts;
}
function getPlayers(address play) view public returns (uint, string, string)
  return (players[play].rank, players[play].fName, players[play].lName);
}
function count players() view public returns (uint) {
  return playerAccts.length;
}
