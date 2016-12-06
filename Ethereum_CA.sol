pragma solidity ^0.4.0;

contract Ethereum_CA {
    struct Cert {
        uint public_key;
        string domain_name;
    }

    mapping(address => Cert) certs;

    function register_cert(uint _pub_key, string _domain_name) {
        certs[msg.sender].public_key = _pub_key;
        certs[msg.sender].domain_name = _domain_name;
    }

    function get_public_key(address owner) constant returns (uint key) {
        key = certs[owner].public_key;
    }

    function get_domain_name(address owner) constant returns (string name) {
        name = certs[owner].domain_name;
    }
}
