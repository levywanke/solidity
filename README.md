# Solidity Programming

## Overview
Solidity is an object-oriented programming language used for writing smart contracts that run on the Ethereum Virtual Machine (EVM). It is designed to target the Ethereum blockchain, but can also be used on other blockchain platforms that support smart contracts.

## Key Features
- **Statically Typed**: Solidity is statically typed, meaning variable types must be defined during declaration.
- **Contract-Oriented**: The core of Solidity is based on the concept of contracts, which contain variables, functions, and can inherit from other contracts.
- **Inheritance**: Solidity supports multiple inheritance, allowing contracts to inherit features and properties from other contracts.
- **Libraries**: Provides the ability to write reusable code and use it across different contracts.
- **Modifiers**: Functions can have modifiers to control execution, such as access control mechanisms.
- **Interfaces and Abstract Contracts**: Supports defining interfaces and abstract contracts to ensure that contracts meet specific requirements.

## Sample Solidity Contract

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 storedData;

    function set(uint256 x) public {
        storedData = x;
    }

    function get() public view returns (uint256) {
        return storedData;
    }
}
