pragma solidity ^0.4.7;

contract ThreeKingdoms {

    enum Kingdoms {
        Wei,
        Shu,
        Wu
    }
    
    uint constant KingdomNum = 3;
    // store voter and votes for each kingdom
    mapping(address => uint) [KingdomNum] votes;
    // store balance for each kingdom
    uint [KingdomNum] balances;
    // the person who can finalize the game
    address owner;
    // the game end timestamp
    uint endtime;
    
    /*
        @description: Only owner can call this function
    */
    modifier onlyOwner {
        require(
            msg.sender == owner,
        );
        _;
    }
    
    /*
        @description: detect if the game is over
    */
    modifier gameOver {
    }
    
    /*
        @description: init owner and endtime
    */
    constructor() public {
    }
    
    /*
        @description: vote token for your kingdom
    */
    function vote(Kingdoms kingdom) external payable {
    }
    
    /*
        @description: finalize the game
        will call reward() and withdraw()
    */
    function finalize() external {
    }
    
    /*
        @description: distribute rewards to people who win the game
    */
    function reward() private {
    }
    
    /*
        @description: withdraw left token to reward the developer
    */
    function withdraw() private {
    }
}
