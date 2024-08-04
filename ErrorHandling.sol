// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract ErrorHandling {
   uint a;
   uint b;

   event SetValues();

   function setVals(uint _a, uint _b) public  {
    require(_a > 0, "The value of a cannot be 0");
    a = _a;

    if (_b == 7) {
        revert("No sevens here please, the sixes are afraid of them");
    }
    b = _b;
    if(_b > 9 && _b < 12) {
        assert(_b == 10);
        
    }
    emit SetValues();
   }
}
