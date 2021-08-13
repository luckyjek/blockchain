pragma solidity 0.8.6;

contract Tiketing{
 
    mapping(address => uint) public balance;
    // string message;
    // uint num;

    
    //누가 , 무엇을 , 얼마 
    //user가 나의컨트랙트로 보내는 입금함수 
    // function deposit(uint amount, string memory message, uint num ) public{
    //     balance[msg.sender] += amount; 
        
    // }
    function deposit( ) public payable{
        // require(msg.sender >= 0.5 ether);
        // balance[msg.sender] += msg.value; 
        
        balance[msg.sender] += msg.value;
        
    }
    
    function getBalance() public view returns (uint) {
        return balance[msg.sender];
    }
    
    receive() external payable{}
    
    
}