pragma solidity ^0.5.0;

import safemath.sol

Contract MyCareer {
    Struct MyPlayer {
      address _address;
      uint VCFunds;
    }
    Player[] players;

    function getPlayers(uint[] indexes) public returns (address[], uint[]) {
    }
    address[]memory address = new address[](indexes.length);
    uint[] memory VCFunds = new uint[] (indexes.length);
    for (uint i=0; i < indexes.length; i ++) {
      player storage player = players[indexes[i]];
      address[i] = players.address;
      VCFunds[i] = players.VCFunds;
    }
    returns (address, VCFunds);

}
