// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";
import {SimpleCalculator} from "../../src/SimpleCalculator.sol";



contract BaseTest is Test {

    SimpleCalculator simpleCalcSol;
    SimpleCalculator simpleCalHuff;
    string public constant simpleCalcLocation = "SimpleCalculator";

    
    
    function setUp() public {
        simpleCalcSol = new SimpleCalculator();
        simpleCalHuff = SimpleCalculator(HuffDeployer.config().deploy(simpleCalcLocation));
    }

    function test_Add() public {
        uint256 x = 105;
        uint256 y = 256;

        //Solidity 
        uint256 resultSol = simpleCalcSol.add(x, y);
        assertEq(resultSol, x + y);

        //Huff Deployer
        uint256 resultHuff = simpleCalHuff.add(x, y);
        assertEq(resultHuff, x + y);
    }

    function test_Sub() public {
        uint256 x = 256;
        uint256 y = 120;

        //Solidity 
        uint256 resultSol = simpleCalcSol.sub(x, y);
        assertEq(resultSol, x - y);

        //Huff Deployer
        uint256 resultHuff = simpleCalHuff.sub(x, y);
        console.log(resultHuff);
        assertEq(resultHuff, x - y);
    }

    function test_multi() public {
        uint256 x = 256;
        uint256 y = 120;

        //Solidity 
        uint256 resultSol = simpleCalcSol.multi(x, y);
        assertEq(resultSol, x * y);

        //Huff Deployer
        uint256 resultHuff = simpleCalHuff.multi(x, y);
        console.log(resultHuff);
        assertEq(resultHuff, x * y);
    }

    function test_div() public {
        uint256 x = 256;
        uint256 y = 120;

        //Solidity 
        uint256 resultSol = simpleCalcSol.div(x, y);
        assertEq(resultSol, x / y);

        //Huff Deployer
        uint256 resultHuff = simpleCalHuff.div(x, y);
        console.log(resultHuff);
        assertEq(resultHuff, x / y);
    }
}