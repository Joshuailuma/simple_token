// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract MyToken {
    string public tokenName = "MYTOKEN";
    string public tokenAbbrev = "MT";
    uint public totalSupply = 0;
    mapping(address => uint) public balance;

    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balance[_address] += _value;
    }

    function burn(address _address, uint _value) public {
        if (balance[_address] >= _value) {
            totalSupply -= _value;
            balance[_address] -= _value;
        }
    }
}
