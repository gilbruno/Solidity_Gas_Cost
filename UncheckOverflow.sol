// SPDX-License-Identifier: MIT

/**
   Smart contract example to see gas cost diffs 
   with and without "unchecked" statement
 */
pragma solidity 0.8.15;

contract UncheckOverflow {
    
    uint private x;

    function increment() external {
        x++;
    }

    // @dev : unchecked reduces gas cost
    function incrementUncheckOverflow() external {
        unchecked {
            x++;    
        }
        
    }


}