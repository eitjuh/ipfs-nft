// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {SimpleNFT} from "../src/SimpleNFT.sol";

contract SimpleNFTScript is Script {
    SimpleNFT public nft;

    function setUp() public {}

    function run() public {
        // Read the private key from environment variable
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        address deployer = vm.addr(deployerPrivateKey);

        vm.startBroadcast(deployerPrivateKey);

        // Deploy the SimpleNFT contract with deployer as initial owner
        nft = new SimpleNFT(deployer);

        console.log("SimpleNFT deployed to:", address(nft));

        vm.stopBroadcast();
    }
}
