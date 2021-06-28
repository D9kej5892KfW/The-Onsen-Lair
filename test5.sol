pragma solidity ^0.5.3;
contract ForexLedger {
    struct Jour {
        uint id;
        address adr;
       string Date;
       string GaininPercent;
       string T1;
       string T2;
    }
       
       
    Jour[] public Jours;
    uint public nextId;
    
    
    function createJour(address _adr, string memory _Date, string memory _GaininPercent, string memory _T1, string memory _T2) public {
        Jours.push(Jour(nextId, _adr, _Date, _GaininPercent, _T1, _T2));
        nextId ++;
    }
    function updateJour(uint _id, address _adr, string memory _Date, string memory _GaininPercent, string memory _T1, string memory _T2) public {
        uint i = findJour(_id);
        Jours[i].adr = _adr;
        Jours[i].Date = _Date;
        Jours[i].GaininPercent = _GaininPercent;
        Jours[i].T1 = _T1;
        Jours[i].T2 = _T2;
    }
    function readJour(uint _id) public view returns(uint, address _adr, string memory _Date, string memory _GaininPercent, string memory _T1, string memory _T2) {
        uint i = findJour(_id);
        return (Jours[i].id, Jours[i].adr, Jours[i].Date, Jours[i].GaininPercent, Jours[i].T1, Jours[i].T2);
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
