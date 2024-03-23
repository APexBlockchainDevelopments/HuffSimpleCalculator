// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {Test,console} from "forge-std/Test.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";


interface iCalc {
    function add(uint256, uint256) external returns(uint256);
  }

contract CreationByteCodeDeploy is Test{

    address newContractAddress;
    string public constant simpleCalcLocation = "SimpleCalculator";


    function run() public {
        // bytes memory creationByteCode = "0x601d8060093d393df35f3560e01c63771602f71461000f575b600435602435015f5260205ff3";

        // address newContractAddressTemp;
        // assembly {
        //     newContractAddressTemp := create(0, add(creationByteCode, 0x20), mload(creationByteCode))
        // }

        // newContractAddress = newContractAddressTemp;
        // console.log(newContractAddress);
        // addTwo(15, 16);

        iCalc icalc = iCalc(HuffDeployer.config().deploy(simpleCalcLocation));
        uint256 result = icalc.add(10, 100);
        console.log(result);
    }


    // function addTwo(uint256 x, uint256 y) public {
    //     Calc calc = Calc(newContractAddress);

    //     uint256 result = calc.add(x, y);

    //     console.log(result);
    // }
}