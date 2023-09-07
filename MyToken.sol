pragma solidity ^0.8.5;
// SPDX-License-Identifier: CPOL-1.02

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract MyToken is ERC20 {
    address public admin =  ; //wallet adreess;
    address public User;
    mapping (address => uint) public balances;
    
    
    constructor() ERC20('Cardell Token', 'Cardell Coin') {
        _mint(admin, 10000 * 10 ** 18);
        
    }

      function GetUser(address hello) public{
            User = hello;
        }
      function mint( uint amount) external {
         require(msg.sender == admin, 'only admin');
         _mint(msg.sender, amount);
    }

    function burn(uint amount) external {
        _burn(msg.sender, amount);
    }
}
contract ERC20WithMinerReward is ERC20, MyToken {

     function mintMinterReward() public { 
            _mint(User, 1000);

        } 
}       
