// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "openzeppelin-contracts/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";

contract AdminUpgradeabilityProxy is TransparentUpgradeableProxy {
    address public proxyAdmin;

    constructor(
        address _logic,
        address _admin,
        bytes memory _data
    ) TransparentUpgradeableProxy(_logic, _admin, _data) {
        proxyAdmin = _admin;
    }
}
