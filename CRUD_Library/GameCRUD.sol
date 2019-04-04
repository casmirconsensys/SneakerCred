pragma solidity ^0.5.1;
pragma experimental ABIEncoderV2;

import "./HitchensUnorderedKeySet.sol";
import "./HitchensUnorderedAddressSet.sol";


contract GameCrud {
     using HitchensUnorderedKeySetLib for HitchensUnorderedKeySetLib.Set;



     struct GameStruct {
         bytes32 gameId;
         bytes32 redTeam;
         bytes32 blueTeam;
         bool exists;

    }
        mapping (bytes32 => GameStruct) private gameStruct;
        address[] private gameIndex;


        event LogNewGame(address indexed playerAddress, bytes32 gameId, bytes32 teamId);
        event LogNewBadge(address indexed userAddress, bytes32 badgeId);
        event LogNewshoeBoosts(address indexed userAddress,  bytes32 shoeBoostId);
        event LogNewPlayer(address indexed playerAddress, uint index, bytes32 playerName, uint playerBadge, uint shoeBoost);
        event LogUpdatePlayer(address indexed playerAddress, uint index, bytes32 playerName, uint playerBadge, uint shoeBoost);
        event LogDeletePlayer(address indexed playerAddress, uint index);
        event LogBadgeDeleted(address indexed playerAddress, bytes32 badgeId);
        event LogBoostsDeleted(address indexed playerAddress, bytes32 boostsId);
        event LogTeamDeleted(address indexed , bytes32 gameId);

        struct PlayerStruct {
        bytes32 teamId;
        bytes32 playerName;
        uint playerAddress;
        uint playerBadge;
        uint shoeBoost;
        uint index;
        bool exists;
  }

    mapping(address => PlayerStruct) private playerStructs;
    address[] private playerIndex;
    PlayerStruct[] public blueTeam;
    PlayerStruct[] public redTeam;

    function addressToBytes32(address a) public view returns(bytes32) {
        return bytes32(uint(uint160(msg.sender)));
    }

    function bytes32ToAddress(bytes32 b) public view returns(address) {
        return address(uint160(uint(msg.sender)));
    }

    function exists (address playerAddress)
        public
        view
        returns(bool isPlayer) {


        if(playerIndex.length == 0) return false;
        return (playerIndex[playerStructs[playerAddress].index] == playerAddress);
    }



    function joinGame(bytes32 gameId, bool teamId, bytes32 playerId) public view {
        //require(playerStructs[playerId].exists == true, "Registration please");
        require(gameStruct[gameId].exists == true, "Not a game.");
        GameStruct storage g = gameStruct[gameId];
        PlayerStruct storage p = playerStructs[msg.sender];
        //blueTeam.push(p);


        // if(teamId) g.redTeam.insert(msg.sender);
        // if(!teamId) g.redTeam.insert(msg.sender);
        //p.insert(gameId);
        //emit LogNewGame(
                //playerId,
                //gameId,
                //teamId);



        //return g.blueTeam.count(); //how many players are there?

        //return g.blueTeam.keyAtIndex(now); //where row is a uint < count()
    }



    //function quitTeam(bytes32 gameId, bool team) public view {
        //GameStruct storage g = gameId[gameId];
        //PlayerStruct storage p = PlayerStruct[msg.sender];
        //if(team) g.redTeam.remove(msg.sender);
        //if(!team) g.blueTeam.remove(msg.sender);
        //p.remove(gameId);
        //emit LogTeamDeleted(address (msg.sender), bytes32 [gameId]);


    //}

}
