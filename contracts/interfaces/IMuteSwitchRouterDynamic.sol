// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IMuteSwitchRouterDynamic {
    function WETH() external view returns (address);
    function factory() external view returns (address);
    function addLiquidity(
        address tokenA,
        address tokenB,
        uint amountADesired,
        uint amountBDesired,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline,
        uint feeType,
        bool stable
    ) external returns (uint amountA, uint amountB, uint liquidity);
    function addLiquidityETH(
        address token,
        uint amountTokenDesired,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline,
        uint feeType,
        bool stable
    ) external payable returns (uint amountToken, uint amountETH, uint liquidity);
    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint liquidity,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline,
        bool stable
    ) external returns (uint amountA, uint amountB);
    function removeLiquidityETH(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline,
        bool stable
    ) external returns (uint amountToken, uint amountETH);
    function removeLiquidityETHSupportingFeeOnTransferTokens(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline,
        bool stable
    ) external returns (uint amountETH);
    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline,
        bool[] calldata stable
    ) external returns (uint[] memory amounts);
    function swapExactETHForTokens(uint amountOutMin, address[] calldata path, address to, uint deadline, bool[] calldata stable)
        external
        payable
        returns (uint[] memory amounts);
    function swapExactTokensForETH(uint amountIn, uint amountOutMin, address[] calldata path, address to, uint deadline, bool[] calldata stable)
        external
        returns (uint[] memory amounts);

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
                uint amountOutMin,
                address[] calldata path,
                address to,
                uint deadline,
                bool[] calldata stable
          ) external payable;

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
              uint amountIn,
              uint amountOutMin,
              address[] calldata path,
              address to,
              uint deadline,
              bool[] calldata stable
          ) external;
    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
            uint amountIn,
            uint amountOutMin,
            address[] calldata path,
            address to,
            uint deadline,
            bool[] calldata stable
        ) external;


    function quote(uint amountA, uint reserveA, uint reserveB) external pure returns (uint amountB);
    function getAmountOut(uint amountIn, address tokenIn, address tokenOut) external view returns (uint amountOut, bool stable, uint fee);

    function getAmountsOutExpanded(uint amountIn, address[] calldata path) external view returns (uint[] memory amounts, bool[] memory stable, uint[] memory fees);
    function getAmountsOut(uint amountIn, address[] calldata path, bool[] calldata stable) external view returns (uint[] memory amounts, bool[] memory _stable, uint[] memory fees);
    function getPairInfo(address[] calldata path, bool stable) external view returns(address tokenA, address tokenB, address pair, uint reserveA, uint reserveB, uint fee);

}
