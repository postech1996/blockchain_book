pragma solidity ^0.4.25;

contract InternalFunctionCalls {
    // g() 함수에서 f() 함수를 호출합니다.
    function g(uint) public pure returns (uint ret) {
        return f();
    }

    // f() 함수에서 g() 함수를 호출합니다. 한편 f() 함수를 재귀 호출합니다.
    function f() internal pure returns (uint ret) {
        return g(7) + f();
    }
}