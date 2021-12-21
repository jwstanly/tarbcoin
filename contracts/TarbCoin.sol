pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TarbCoin is ERC20 {
    constructor() ERC20("TarbCoin", "TRBC") {}
}