pragma solidity ^0.5.0;

import "./ERC1155Mintable.sol";

contract GameShoeMaker is ERC1155Mintable {
    
    mapping (address => address) public SneakrIndexToOwner;
    mapping (address =>uint) public balances;
    mapping(uint => uint) internal indexSneakr;
    
    uint[] internal sneakrIndexes;
    uint256 public _id;
    
    constructor(uint256 amount, string memory uri) public {
        create(amount, uri);
       
    }

    struct SneakrStruct{
    bytes32 playerName;
    uint playerBadge;
    uint shoeBoost;
    uint index;
    }

    SneakrStruct[] sneakerStructs;
 
    function createNewSneakr(uint256 _initialSupply, string memory _uri, 
    bytes32 playerName, 
    uint playerBadge,
    uint shoeBoost,
    uint index) public {
        
    SneakrStruct memory newSneakr;
    }
    
}
