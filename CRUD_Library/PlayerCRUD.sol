pragma solidity ^0.5.1;

import "./HitchensUnorderedKeySet.sol";
import "./Ownable.sol";

contract PlayerCrud {

  struct PlayerStruct {
    bytes32 playerName;
    uint playerBadge;
    uint shoeBoost;
    uint index;
  }

  mapping(address => PlayerStruct) private playerStructs;
  address[] private playerIndex;

  event LogNewPlayer   (address indexed playerAddress, uint index, bytes32 playerName, uint playerBadge, uint shoeBoost);
  event LogshoeBoost(address indexed playerAddress, uint index, bytes32 playerName, uint playerBadge, uint shoeBoost);
  event LogUpdateshoeBoost(address indexed playerAddress, uint index, bytes32 playerName, uint playerBadge, uint shoeBoost);
  event LogUpdatePlayer(address indexed playerAddress, uint index, bytes32 playerName, uint playerBadge, uint shoeBoost);
  event LogDeletePlayer(address indexed playerAddress, uint index);

  function isPlayer(address playerAddress)
    public
    view
    returns(bool isIndeed)
  {
    if(playerIndex.length == 0) return false;
    return (playerIndex[playerStructs[playerAddress].index] == playerAddress);
  }

  function insertPlayer(
    address playerAddress,
    bytes32 playerName,
    uint    playerBadge,
    uint    shoeBoost)
    public
    returns(uint index)
  {
    if(isPlayer(playerAddress)) revert();
    playerStructs[playerAddress].playerName = playerName;
    playerStructs[playerAddress].playerBadge   = playerBadge;
    playerStructs[playerAddress].shoeBoost   = shoeBoost;
    playerStructs[playerAddress].index     = playerIndex.push(playerAddress)-1;
    emit LogNewPlayer(
        playerAddress,
        playerStructs[playerAddress].index,
        playerName,
        playerBadge,
        shoeBoost);
    return playerIndex.length-1;
  }

  function deletePlayer(address playerAddress)
    public
    returns(uint index)
  {
    if(!isPlayer(playerAddress)) revert();
    uint rowToDelete = playerStructs[playerAddress].index;
    address keyToMove = playerIndex[playerIndex.length-1];
    playerIndex[rowToDelete] = keyToMove;
    playerStructs[keyToMove].index = rowToDelete;
    playerIndex.length--;
    emit LogDeletePlayer(
        playerAddress,
        rowToDelete);
    emit LogUpdatePlayer(
        keyToMove,
        rowToDelete,
        playerStructs[keyToMove].playerName,
        playerStructs[keyToMove].playerBadge,
        playerStructs[keyToMove].shoeBoost);
    return rowToDelete;
  }

  function getPlayer(address playerAddress)
    public
    view
    returns(bytes32 playerName, uint playerBadge, uint shoeBoost, uint index)
  {
    if(!isPlayer(playerAddress)) revert("Player not found.");
    return(
      playerStructs[playerAddress].playerName,
      playerStructs[playerAddress].playerBadge,
      playerStructs[playerAddress].shoeBoost,
      playerStructs[playerAddress].index);
  }

  function updatePlayerEmail(address playerAddress, bytes32 playerEmail)
    public
    returns(bool success)
  {
    if(!isPlayer(playerAddress)) revert();
    playerStructs[playerAddress].playerName = playerEmail;
    emit LogUpdatePlayer(
      playerAddress,
      playerStructs[playerAddress].index,
      playerStructs[playerAddress].playerName,
      playerStructs[playerAddress].playerBadge,
      playerStructs[playerAddress].shoeBoost);
    return true;
  }

  function updatePlayerBadge(address playerAddress, uint playerBadge)
    public
    returns(bool success)
  {
    if(!isPlayer(playerAddress)) revert();
    playerStructs[playerAddress].playerBadge = playerBadge;
    emit LogUpdatePlayer(
      playerAddress,
      playerStructs[playerAddress].index,
      playerStructs[playerAddress].playerName,
      playerStructs[playerAddress].playerBadge,
      playerStructs[playerAddress].shoeBoost);
    return true;
  }

  function getPlayerCount()
    public
    view
    returns(uint count)
  {
    return playerIndex.length;
  }

  function getPlayerAtIndex(uint index)
    public
    view
    returns(address playerAddress)
  {
    return playerIndex[index];
  }

  function updateshoeBoost(address playerAddress, uint shoeBoost)
    public
    returns(bool success)
  {
    if(!isPlayer(playerAddress)) revert();
    playerStructs[playerAddress].shoeBoost = shoeBoost;
    emit LogUpdateshoeBoost(
      playerAddress,
      playerStructs[playerAddress].index,
      playerStructs[playerAddress].playerName,
      playerStructs[playerAddress].playerBadge,
      playerStructs[playerAddress].shoeBoost);
    return true;
  }

}
