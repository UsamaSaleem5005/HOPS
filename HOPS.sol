// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
 contract HOPS is ERC1155, Ownable
{
uint256 public constant HOPSNFT = 2;
uint votingRights  = 1;
bool brewDao = true;
constructor() ERC1155("") {
       _mint(msg.sender, HOPSNFT, 5280, "");
   }
   function _mint(address account,uint256 id, uint256 amount) public onlyOwner{
       _mint(account, id, amount,"");
 }
mapping(address =>uint) token;
function hopsmapping() external{
token[msg.sender] = HOPSNFT;
}
}
