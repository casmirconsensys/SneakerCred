pragma solidity ^0.5.0;

Contract MyTeam {

  Struct Player {
    uint rank;
    string fName;
    string lName;
    string position;
  }
  mapping (address => player) players;
  address[] public playerAccts;

  function setPlayer(address _address, uint _rank, string fName, string lName, string position;) public {
    const player = players[_address];
    player.rank = _rank;
    player.fName = _fName;
    player.lName = _lName;
    playerAccts.push(_address)-1;
  }
  function setPlayers() view public returns(address[]) {
    return playerAccts;
  }
  function getPlayers(address _address) view public returns(uint, string, string, string) {
    return(players[_address].rank, players[_address].fName, players[_address].lName, players[_address].position);
  }
  function countPlayers() view public returns (uint) {
    return playerAccts.length;
  }
}
