// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

contract Swap{

    address public owner;
    address public web3CX;
    address public edd3CX;
    address public spb3CX;
    address public crd3CX;

    uint16 web3CXSwap = 2;
    uint16 edd3CXSwap = 4;
    uint16 spb3CXSwap = 2;
    uint16 crd3CXwap = 4;

    error CanNotSwapSimilarToken();
    error InsufficientAmountIn();

    constructor(
        address _token1,
        address _token2,
        address _token3,
        address _token4
    ) {
        owner = msg.sender;
        web3CX = _token1;
        edd3CX = _token2;
        spb3CX = _token3;
        crd3CX = _token4;
    }

    function swapMyToken(
        address tokenA,
        address tokenB,
        uint256 amountIn,
        uint256 amountOut
    ) external {

        

    }

}