# Description

I write some smart contracts to learn about gas cost and optimization

Gas is measuring a unit of computation so it depends on the Solidity implementation.<br>
It does not cost the same price to transfer ETH or transfer an ERC20 Toekn or buy a NFT on OpenSea.

## Block Limits

  * Bitcoin has limited a block size to 1MB
  * Ethereum has no block size limit but limits the amount of computations per block or gas
  * The block limit for ETH is 30 millions gas
  * So for a cost of 21000 gas to tranfer ETH, a block can hold 1428 ETH transfers
  * If your smart contract requires more than 30 millions gas, it won't fit on the block

## Transaction fee smart contracts

<table border="1">
    <TR>
        <TD>Operation</TD>
        <TD>Gas Cost</TD>
    </TR>
    <tr>
        <TD>ETH Transfer</TD>
        <TD>21000</TD>
    </tr>
    <tr>
        <TD>USDC Transfer</TD>
        <TD>60825</TD>
    </tr>
    <tr>
        <TD>Mint Bored Ape</TD>
        <TD>173576</TD>
    </tr>
    <tr>
        <TD>Buy on OpenSea</TD>
        <TD>242499</TD>
    </tr>
</table>

<br>

## Transaction price 

The price of an ethereum transaction is : 

Price Of ETH x Gas Cost x Gas Price / 1 Billion.

Ex :

If ETH price is 2000$ and gas cost is 50 the transaction cost to transfer ETH is : 

2000 x 21000 x 50 / 1000000000 = 2.1$

## "unchecked" statement

When you use a uint256, if the value is greater than 256 bytes, you can have an overflow.<br>
For this overflow, the Opcode generated must handle this case of a greater value.<br>
With the "unchecked" statement you don't handle this case that makes the Opcode lighter.<br>
And the gas used is less.<br><br>

This can be visible on the Counter smart contract of OpenZeppelin <br> 
==> https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Counters.sol

