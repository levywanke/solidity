# Blockchain Project

This is a base project structure for blockchain development using Solidity.

## Directories:

- **contracts/**: Holds Solidity smart contracts.
- **migrations/**: Truffle deployment scripts.
- **scripts/**: Hardhat scripts for deployment and interaction.
- **test/**: Unit tests for smart contracts.

## Commands

- Compile contracts:
  ```bash
  npx hardhat compile
  ```

- Run tests:
  ```bash
  npx hardhat test
  ```

- Deploy contracts:
  ```bash
  npx hardhat run scripts/deploy.js --network localhost
  ```

