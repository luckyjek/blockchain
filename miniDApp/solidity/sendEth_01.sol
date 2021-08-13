pragma solidity 0.8.6;

contract Attack {
    
    function attack() public payable {
        
    }
    
    fallback() external payable {
        payable(msg.sender).transfer(1 ether);
    }
    
}