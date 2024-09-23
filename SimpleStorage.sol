// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
       uint256 favoriteNumber;
       string name; 
    }

    Person public myFriend = Person({favoriteNumber: 7, name: "Pat"});

    function store(uint256 favnum) public {
        myFavoriteNumber = favnum;
    }

    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

}

