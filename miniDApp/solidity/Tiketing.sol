//최신버전
pragma solidity 0.8.6;

contract MiniProj {
    struct Customer{
        address customerAddress;
        string name;
        uint age;
    }
    
    uint public sumTiket ;
    mapping(uint => Customer) public customerInfo;
    address public owner;
    
    event logBuyTiket(
        address _customer,
        uint _id
    );
    constructor() public {
    owner = msg.sender;
    }
    
    function buyTiket(uint _id, address _addr ,string memory _name, uint _age) public payable{
        require( msg.value > 0);
        Customer storage customer = customerInfo[_id];
        customer.customerAddress = _addr; 
        customer.name = _name;
        customer.age = _age;
        
        sumTiket++;
        //require(owner.send(msg.value));
        //owner.transfer(msg.sender);
        emit logBuyTiket(msg.sender, _id); 
    }
    
    
    function getTiketInfo(uint _id) public view returns(address, string memory, uint){
        Customer memory customer = customerInfo[_id];
        return (customer.customerAddress, customer.name,customer.age);
    }
}



///////////////////////////////////////////////////////////////////////////////////////////////////////아래는 예전버전


// pragma solidity ^0.4.23;

// contract MiniProj {
//     struct Customer{
//         address customerAddress;
//         string name;
//         uint age;
//     }
    
//     uint public sumTiket ;
//     mapping(uint => Customer) public customerInfo;
//     address public owner;
    
//     event logBuyTiket(
//         address _customer,
//         uint _id
//     );
//     constructor() public {
//     owner = msg.sender;
//     }
    
//     function buyTiket(uint _id, string memory _name, uint _age) public payable{
//         require( msg.value > 0);
//         Customer storage customer = customerInfo[_id];
//         customer.name = _name;
//         customer.age = _age;
        
//         sumTiket++;
//         //require(owner.send(msg.value));
//         //owner.transfer(msg.sender);
//         emit logBuyTiket(msg.sender, _id); 
//     }
    
    
//     function getTiketInfo(uint _id) public view returns(address ,string, uint){
//         Customer memory customer = customerInfo[_id];
//         return (customer.customerAddress, customer.name,customer.age);
//     }
    
    
  
   
// }



//////////////////////////////////////////////////////////////////////////////////////////////////초기 
// pragma solidity 0.8.6;

// contract Tiketing{
 
//     mapping(address => uint) public balance;
//     // string message;
//     // uint num;

    
//     //누가 , 무엇을 , 얼마 
//     //user가 나의컨트랙트로 보내는 입금함수 
//     // function deposit(uint amount, string memory message, uint num ) public{
//     //     balance[msg.sender] += amount; 
        
//     // }
//     function deposit( ) public payable{
//         // require(msg.sender >= 0.5 ether);
//         // balance[msg.sender] += msg.value; 
        
//         balance[msg.sender] += msg.value;
        
//     }
    
//     function getBalance() public view returns (uint) {
//         return balance[msg.sender];
//     }
    
//     receive() external payable{}
    
    
// }
