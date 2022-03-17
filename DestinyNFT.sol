// "SPDX-License-Identifier: MIT"
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


contract DestinyNFT is ERC721URIStorage {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("DestinyNFT", "DSTNY") {}

    

    function createItem(address minter, string memory metadataURI)
        public
        returns (uint256)
    {
        _tokenIdCounter.increment();

        uint256 newItemId = _tokenIdCounter.current();
        _mint(minter, newItemId);
        _setTokenURI(newItemId, metadataURI);

        return newItemId;
    }
}
