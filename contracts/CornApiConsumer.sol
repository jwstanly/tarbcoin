// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/ChainlinkClient.sol";
import "./Util.sol";

contract CornApiConsumer is ChainlinkClient {

    using Chainlink for Chainlink.Request;

    Util private util = new Util();
  
    uint256 internal cornPrice;
    
    address private oracle;
    bytes32 private jobId;
    uint256 private fee;
    
    constructor() {
        setPublicChainlinkToken();
        oracle = 0xc57B33452b4F7BB189bB5AfaE9cc4aBa1f7a4FD8;
        jobId = "d5270d1c311941d0b08bead21fea7747";
        fee = 0.1 * 10 ** 18;
    }
    
    function requestCornPriceData() public returns (bytes32 requestId) {
        Chainlink.Request memory request = buildChainlinkRequest(jobId, address(this), this.fulfill.selector);
        
        uint to = block.timestamp;
        uint from = to - 1e4;

        string memory url = "https://tvc6.investing.com/19006bb49e67dad1c90a86c168dfb34d/1640125344/1/1/8/history?symbol=8918&resolution=15&from=";
        url = util.concatenate(url, util.uint2str(from));
        url = util.concatenate(url, "&to=");
        url = util.concatenate(url, util.uint2str(to));

        request.add("get", url);
        request.add("path", "c.0");
        request.addInt("times", 1);

        return sendChainlinkRequestTo(oracle, request, fee);
    }
    
    function fulfill(bytes32 _requestId, uint256 _cornPrice) public recordChainlinkFulfillment(_requestId) {
        cornPrice = _cornPrice;
    }
}