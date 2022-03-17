// "SPDX-License-Identifier: MIT"


pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract Bookingme is ERC20{
    constructor() ERC20("bookingme", "bkmn") {
        _mint(msg.sender, 1000000 * (10 ** decimals()));
//        openZepellin updates _total supply when mint called
    }

    function buyToken(address receiver) external payable {
        require(msg.value > 0 );
        uint256 amount = 1000 * msg.value;
        _mint(receiver, amount );
        //balanceOf[receiver] += amount * (10 ** decimals())
    }
}
