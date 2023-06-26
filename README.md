# MTok Solidity Project
This project implements a game token and a smart contract with various functionalities. The smart contract is deployed on the Avalanche Fuji Testnet and utilizes the Snowtrace API. The deployment is done using Hardhat, and interaction with the contract is facilitated through Remix.

# Contract Details
The contract is named mtok and extends the ERC20 and Ownable contracts from the OpenZeppelin library. It is licensed under the MIT license and requires Solidity version 0.8.9 or higher.

# Token Initialization
The token is initialized with the name "MTok" and the symbol "MT". Upon deployment, the contract creator is assigned an initial supply of 10,000 tokens.

# Store Items
The contract includes a functionality to manage store items. Each item is represented by a unique identifier, name, number, and price. Initially, three items are added during contract deployment: "Item 1", "Item 2", and "Item 3".

# Minting Tokens
The contract owner has the ability to mint additional tokens. The mint function allows the owner to create new tokens and assign them to a specified address.

# Balance Checking
The checkBalance function enables users to view their token balance.

# Store Item Purchase
Users can purchase store items using their tokens by calling the buyStoreItems function and providing the item number as an argument. The tokens required for the purchase are transferred from the user's account to the contract, and the item is added to the user's game holdings.

# Token Transfer
The transferToken function enables users to transfer tokens from their account to another specified address.

# Token Burning
Users can burn (destroy) a specified amount of their own tokens using the burn function.

# Deployment and Interaction
This project is deployed on the Avalanche Fuji Testnet using the Hardhat development environment. Remix is used to interact with the contract and execute its functions.
