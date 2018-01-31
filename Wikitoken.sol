pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Wikitoken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Wikitoken(address _owner)  UpgradeableToken(_owner) {
    name = "Wikitoken";
    symbol = "WKT";
    totalSupply = 60000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}