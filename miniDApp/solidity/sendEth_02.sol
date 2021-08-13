pragma solidity 0.8.6;



contract ForceHack {
    
    // function attack() public {
    //selfdestruct(payable(msg.sender));
    // }
    //address owner ;
    
    
    constructor() public payable{
     //   owner = msg.sender;
    }
    
    //function attack(address _to) public {
    //require(tx.origin == owner);
    function attack() public {
    payable(tx.origin).transfer(address(this).balance);
    }
    
    
    fallback() external payable{
        
    }
    
    
}