// SPDX-License-Identifier: MIT    
     
pragma solidity ^0.8.0;   
   
contract Minecraft{ 
 
    struct Character{ 
        string username; 
        characterState state; 
        uint HP; 
        Mode mode; 
    } 
 
    enum gameState{ 
        Play, 
        Stop 
    } 
 
    enum characterState{ 
        Dead, 
        Live 
    } 
 
    enum Mode{ 
        Creative, 
        Survive, 
        Hard 
    } 
 
    Character public character; 
 
    constructor(string memory _username){ 
        character.username=_username; 
        character.HP=1200; 
        } 
 
    function Hit(uint _damage) public{ 
        character.HP=character.HP-_damage; 
    } 
 
    function changeCharacter(characterState _characterstate) public{ 
        character.state = _characterstate; 
    } 
 
    function changeMode(Mode _mode) public{ 
        character.mode = _mode; 
    } 
}
