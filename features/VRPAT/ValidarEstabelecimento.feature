#language: pt

Funcionalidade: VRPAT
    validar tipo de estabelecimento na API
    https://portal.vr.com.br/api-web/comum/enumerations/VRPAT
    @Estaelecimento
    Cenario: Valido se o response possui a chave “typeOfEstablishment”
        Dado que executei o get com sucesso
        Quando verifico se o response possui a chave “typeOfEstablishment”
        Entao valido que existe chave “typeOfEstablishment”
        E exibo o tipo de estabelecimento "PIZZARIA"

    @Metodo
    Cenario: 1
        Dado que passo a seguinte string "bananas, tomates # e ventiladores"
        Quando passo o array de simbolos  ["#", "!"]
        Entao retorna o string reduzida 1

    Cenario: 2
        Dado que passo a seguinte string "o rato roeu a roupa $ do rei % de roma"
        Quando passo o array de simbolos ["%", "!"]
        Entao retorna o string reduzida 2

    Cenario: 3
        Dado que passo a seguinte string "the quick brown fox & jumped over * the lazy dog"
        Quando passo o array de simbolos ["&", "*", "%", "!"]
        Entao retorna o string reduzida 3
    
    