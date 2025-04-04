// SPDX-License-Identifier: MIT
pragma solidity ^0.4.22;


contract Jokenpon {

    // Variável que armazena o endereço do dono do contrato.
    address public owner;

    // Evento emitido sempre que a escolha for feita
    event EscolhaFeita1(uint256 _escolha);
    event EscolhaFeita2(uint _escolha2);
    event EscolhaFeita3(uint _escolha3);

    ///Construtor que define o criador do contrato como dono.
    constructor() public {
        owner = msg.sender;
    }

    
    function setEscolha(uint256 _escolha, uint256 _escolha2, uint256 _escolha3, address _carteira, address _carteira2, address _carteira3, string memory Nomes) public {
        require(msg.sender == owner, "Apenas o dono pode alterar a escolha.");
        _escolha = _escolha;
        _escolha2 = _escolha2;
        _escolha3 = _escolha3;

        emit EscolhaFeita1(_escolha); // evento que ostra a escolha do jogador 1
        emit EscolhaFeita2(_escolha2); // evento que ostra a escolha do jogador 2
        emit EscolhaFeita3(_escolha3); // evento que ostra a escolha do jogador 3
    } 

// desenvoler a logica de vitoria e derrota.



    
}