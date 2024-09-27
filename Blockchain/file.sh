#!/bin/bash

# Base directory (Blockchain)
BASE_DIR="Blockchain"

# Directory structure
DIRS=("contracts" "migrations" "scripts" "test")

# Create base directories
for DIR in "${DIRS[@]}"; do
    if [ ! -d "$BASE_DIR/$DIR" ]; then
        mkdir -p "$BASE_DIR/$DIR"
        echo "Created directory: $BASE_DIR/$DIR"
    else
        echo "Directory already exists: $BASE_DIR/$DIR"
    fi
done

# Create README.md file
README="$BASE_DIR/README.md"
if [ ! -f "$README" ]; then
    echo "# Blockchain Project

This is a base project structure for blockchain development using Solidity.

## Directories:

- **contracts/**: Holds Solidity smart contracts.
- **migrations/**: Truffle deployment scripts.
- **scripts/**: Hardhat scripts for deployment and interaction.
- **test/**: Unit tests for smart contracts.

## Commands

- Compile contracts:
  \`\`\`bash
  npx hardhat compile
  \`\`\`

- Run tests:
  \`\`\`bash
  npx hardhat test
  \`\`\`

- Deploy contracts:
  \`\`\`bash
  npx hardhat run scripts/deploy.js --network localhost
  \`\`\`
" > "$README"
    echo "Created README.md"
else
    echo "README.md already exists"
fi

# Create Hardhat config file
HARDHAT_CONFIG="$BASE_DIR/hardhat.config.js"
if [ ! -f "$HARDHAT_CONFIG" ]; then
    echo "require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.4',
  networks: {
    localhost: {
      url: 'http://127.0.0.1:8545',
    },
  },
};
" > "$HARDHAT_CONFIG"
    echo "Created hardhat.config.js"
else
    echo "hardhat.config.js already exists"
fi

echo "Project setup complete!"
