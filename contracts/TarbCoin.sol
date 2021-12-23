// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./CornApiConsumer.sol";

contract TarbCoin is ERC20, CornApiConsumer {

    constructor() ERC20("TarbCoin", "TRBC") {
        _mint(msg.sender, 1000000000 * 10 ** decimals());
    }

    function mine(uint cornPriceGuess) public {
        requestCornPriceData();

        if (cornPrice == cornPriceGuess) {
             _mint(msg.sender, 100 * 10 ** decimals());
        }
    }
}