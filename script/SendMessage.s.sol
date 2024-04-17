// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";

contract SendMessage is Script {

    address RECEIVER = <ADDRESS_HERE>;
    
    function setUp() public {}

    function run() public {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        bytes memory sendData = abi.encode("YOUR_MESSAGE");
        (bool success, ) = payable(RECEIVER).call{value: 0}(sendData);
        require(success);
    }
}
