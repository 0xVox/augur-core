pragma solidity 0.4.24;


import 'libraries/Delegator.sol';
import 'IController.sol';
import 'reporting/IUniverse.sol';
import 'reporting/IV2ReputationToken.sol';


contract ReputationTokenFactory {
    function createReputationToken(IController _controller, IUniverse _universe) public returns (IV2ReputationToken) {
        Delegator _delegator = new Delegator(_controller, "ReputationToken");
        IV2ReputationToken _reputationToken = IV2ReputationToken(_delegator);
        _reputationToken.initialize(_universe);
        return _reputationToken;
    }
}
