// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

contract ContractTest is Test {
    function setUp() public {
        vm.record();
    }

    function testExample() public {
        // (bytes32[] memory reads, bytes32[] memory writes) = vm.accesses(
        //     address(example)
        // );
        // for (uint256 i = 0; i < reads.length; i++) {
        //     console2.logBytes32(reads[i]);
        // }
        // for (uint256 i = 0; i < writes.length; i++) {
        //     console2.logBytes32(writes[i]);
        // }
    }
}
