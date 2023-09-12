// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

interface IUniswap {
    function swapExactETHForTokens(
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external payable returns (uint[] memory amounts);

    
}

interface IERC20 {
    function balanceOf(address owner) external view returns (uint);

    function decimals() external view returns (uint8);

}


