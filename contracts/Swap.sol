// Sources flattened with hardhat v2.22.10 https://hardhat.org

// SPDX-License-Identifier: SEE

// File contracts/Swap.sol

// Original license: SPDX_License_Identifier: SEE
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Swap{

    address public owner;
    address public web3CX;
    address public edd3CX;
    address public spb3CX;
    address public crd3CX;

    uint8 web3CXSwap = 2;
    uint16 edd3CXSwap = 4;
    uint16 spb3CXSwap = 2;
    uint16 crd3CXSwap = 4;

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
        uint16 amountOut
    ) external {

        // IERC20(tokenA).approve(address(this), amountIn);

        IERC20(tokenA).transferFrom(msg.sender, address(this), amountIn);

        uint16 _amount;

        if(tokenB == web3CX) {
            _amount = amountOut / web3CXSwap;
            require(IERC20(tokenB).balanceOf(address(this)) >= _amount, "Insufficient fund");
            IERC20(tokenB).transfer(msg.sender, _amount);

        } else if(tokenB == edd3CX) {
            _amount = amountOut / edd3CXSwap;
            require(IERC20(tokenB).balanceOf(address(this)) >= _amount, "Insufficient fund");
            IERC20(tokenB).transfer(msg.sender, _amount);

        } else if(tokenB == spb3CX) {
            _amount = amountOut / spb3CXSwap;
            require(IERC20(tokenB).balanceOf(address(this)) >= _amount, "Insufficient fund");
            IERC20(tokenB).transfer(msg.sender, _amount);

        } else if(tokenB == crd3CX) {
            _amount = amountOut / crd3CXSwap;
            require(IERC20(tokenB).balanceOf(address(this)) >= _amount, "Insufficient fund");
            IERC20(tokenB).transfer(msg.sender, _amount); 
        }

    }

}
