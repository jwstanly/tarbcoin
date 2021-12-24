![image](https://i.imgur.com/IXPpzQM.png)

# Tarbcoin

An Ethereum Token based on the ERC-20 standard. TarbCoin's contract address and Etherscan page are found below. 

Note TarbCoin runs on Ethereum's Kovan test blockchain, so TarbCoins are mainly for fun and educational purposes.

**Contract Address:** 0xa7e77d670e9f5ddfc6f691cecc91e955cf4c32e3

**Etherscan:** https://kovan.etherscan.io/token/0xa7e77d670e9f5ddfc6f691cecc91e955cf4c32e3

## Specifications

TarbCoin extends [OpenZeppelin's implementation](https://docs.openzeppelin.com/contracts/2.x/api/token/erc20) of the [ERC-20 standard](https://ethereum.org/en/developers/docs/standards/tokens/erc-20/). So TarbCoin has the following functions. 

```
totalSupply()

balanceOf(account)

transfer(recipient, amount)

allowance(owner, spender)

approve(spender, amount)

transferFrom(sender, recipient, amount)
```

TarbCoin also has the following events. 

```
Transfer(from, to, value)

Approval(owner, spender, value)
```

In addition, there is also a mining function. More information below. 


```
mine(cornPriceGuess)
```

## Mining

TarbCoin was preminted with 10 billion tokens. However, more can be mined.

100 TarbCoins are rewarded to anyone who can correctly input the price of corn per [Investing.com's report of US Corn Futures](https://www.investing.com/commodities/us-corn-streaming-chart). You may hit the endpoint an unlimited amount of times. There is no penalty for incorrect guesses. 