pragma solidity ^0.5.3;
contract ForexLedger {
    struct Jour {
        uint id;
        string Date;
        //uint equity;
        string GaininPercent;
        //string name;
        
    }
    Jour[] public Jours;
    uint public nextId;
    function createJour(string memory _Date, string memory _GaininPercent) public {
        Jours.push(Jour(nextId, _Date, _GaininPercent));
        nextId ++;
    }
    function updateJour(uint _id, string memory _Date, string memory _GaininPercent) public {
        uint i = findJour(_id);
        Jours[i].Date = _Date;
        Jours[i].GaininPercent = _GaininPercent;
    }
    function readJour(uint _id) public view returns(uint, string memory _Date, string memory _GaininPercent) {
        uint i = findJour(_id);
        return (Jours[i].id, Jours[i].Date, Jours[i].GaininPercent);
    }
    function deleteJour(uint _id) public {
        uint i = _id;
        delete Jours[i];
    }
    function findJour(uint _id) internal view returns (uint) {
        for(uint i = 0; i < Jours.length; i++) {
            if(Jours[i].id == _id) {
                return i;
            }
        }
        revert("User does not exist");
    }
    
    
    
}
