// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "src/Storage.sol";
import "forge-std/console2.sol";

contract TestContract is Test {
    using stdStorage for StdStorage;

    Storage example;

    function setUp() public {
        example = new Storage();
    }

    function testExample() public {
        bytes32 proxy = vm.load(address(example), bytes32(0));
        console2.logBytes32(proxy);
        uint256 value = uint256(proxy);
        bytes1 v1 = bytes1(uint8(value));

        // 右移 8位 得到 a1
        bytes1 v2 = bytes1(uint8(value >> 8));
        console2.logBytes1(v1);
        console2.logBytes1(v2);

        bool b1;
        bool b2;
        assembly {
            b1 := v1
            b2 := v2
        }
        console2.log(b1);
        console2.log(b2);

        uint256 value1 = uint256(
            vm.load(address(example), bytes32(uint256(1)))
        );

        console2.log(value1 & uint256(1));
    }

    function testExample1() public {
        bytes32 proxy = vm.load(address(example), bytes32(0));
        console2.logBytes32(proxy);
        uint256 value = uint256(proxy);
        uint8 v1 = uint8(value);

        // 右移 8位 得到 a1
        bytes1 v2 = bytes1(uint8(value >> 8));
        console2.log(v1);
        console2.logBytes1(v2);

        bool b1;
        bool b2;
        assembly {
            b1 := v1
            b2 := v2
        }
        console2.log(b1);
        console2.log(b2);
    }
}
