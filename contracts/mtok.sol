




// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract mtok is ERC20, Ownable {
    constructor() ERC20("MTok", "MT") {
        _mint(msg.sender, 10000 * 10 ** decimals());
        totalItems = 0;
        addItem("Item 1", 1, 10);
        addItem("Item 2", 2, 20);
        addItem("Item 3", 3, 30);
    }

    struct Item {
        string name;
        uint256 number;
        uint256 price;
    }

    mapping(uint256 => Item) public items;
    uint256 public totalItems;

    function addItem(string memory _name, uint256 _number, uint256 _price) private {
        items[totalItems] = Item(_name, _number, _price);
        totalItems++;
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function checkBalance() external view returns(uint256) {
        return balanceOf(msg.sender);
    }

    mapping (address => uint[]) public gameHoldings;

    function buyStoreItems(uint itemNum) external {
        transferFrom(msg.sender, address(this), items[itemNum].price);
        gameHoldings[msg.sender].push(items[itemNum].number);
    }

    function transferToken(address to, uint256 amount) public {
        transferFrom(msg.sender, to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}