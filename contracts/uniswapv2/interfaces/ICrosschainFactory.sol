pragma solidity >=0.5.0;

interface ICrosschainFactory {

    event PairCreated(address indexed token0, address indexed token1, address pair, uint);

    function migrator() external view returns (address);
    function feeToSetter() external view returns (address);

    function getPair(address tokenA, address tokenB) external view returns (address pair);
    function allPairs(uint) external view returns (address pair);
    function allPairsLength() external view returns (uint);

    function createPair(address tokenA, address tokenB) external returns (address pair);

    function getCfxReceiveAddr(address pair) external view returns (address cfxReceiveAddr);
    function WETH() external view returns (address);

    function setMigrator(address) external;
}
