pragma solidity ^0.4.24;

contract MyContract {
    uint[] ages; //ages배열생성
    
    function learnDataLocation(uint[] newAges) public returns (uint a) {
        ages = newAges;
        uint16 myAge = 44;
        uint[] storage studentAges = ages;
        
        studentAges[0] = myAge;
        
        a = studentAges[0];
        
        return a;
    }
}