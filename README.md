## Target

Unlock coontract

## My solution

I used the web3 library to access the storage of the contract `await web3.eth.getStorageAt(contractAddress, storageNumber, console.log)`, once I had the bytes32 from the storage I transformed it into a bytes16 using the bytes16 method from solidy (through another contract)
