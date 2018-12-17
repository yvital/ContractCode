pragma solidity ^0.4.23;

import './MyToken.sol';
import "../node_modules/openzeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "../node_modules/openzeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "../node_modules/openzeppelin-solidity/contracts/crowdsale/distribution/RefundableCrowdsale.sol";

contract MyCrowdsale is RefundableCrowdsale, MintedCrowdsale, CappedCrowdsale {
constructor(
  uint256 _openingTime,
  uint256 _closingTime,
  uint256 _rate,
  address _wallet,
  ERC20Mintable _token,
  uint256 _goal,  uint256 _cap
)

  public
  Crowdsale(_rate, _wallet, _token)
  CappedCrowdsale(_cap)
  TimedCrowdsale(_openingTime, _closingTime)
  RefundableCrowdsale(_goal)
 {
    require(_goal <= _cap);
 }

}
