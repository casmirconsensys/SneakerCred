pragma solidity ^0.5.0;

import "./ERC721.sol";
import "./ERC721Mintable.sol";
import "./Ownable.sol";
import "./IERC165.sol";
import "./ERC721Enumerable.sol";


contract MyTeamCards is ERC721, Ownable {

  event BoughtToken(address indexed buyer, uint256 tokenId);

  uint8 constant TITLE_MIN_LENGTH = 1;
  uint8 constant TITLE_MAX_LENGTH = 64;
  uint256 constant DESCRIPTION_MIN_LENGTH = 1;
  uint256 constant DESCRIPTION_MAX_LENGTH = 10000;

  uint256 currentPrice = 3000000000000000;

  /// The token type (1 for idea, 2 for belonging, etc)
  mapping(uint256 => uint256) tokenTypes;
/// The title of the token
  mapping(uint256 => string) tokenTitles;
/// The description of the token
  mapping(uint256 => string) tokenDescription;




  //constructor() public { }

  //function Mint(address _address, uint256 _tokenID) public {
    //_mint(_address, _tokenID);
    //Example of maintaining a variable token supply via minting

  //}


  //function batchTransferFrom(address _from, address _to, uint256[] calldata _tokenIDs, bytes calldata _data) external {
    //require(_from != address(0));
    //require(_to != address(0));

    //uint256 tokenID;

    //for (uint256 i = 0; i < _tokenIDs.length; i++){
      //tokenID = _tokenIDs[i];
      //safeTransferFrom(_from, _to, tokenID, _data);
    //}
  //}

}
