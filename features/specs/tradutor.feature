# language: pt

Funcionalidade: Tradutor
Eu como usuário
Quero a tradução de uma palavra/frase
Para saber como é em outro idioma

@traduzir
Cenário: Obter tradução
    Dado que eu tenho uma palavra que precisa ser traduzida
    Quando eu mandar o request que realiza essa tradução
    Então o código de resposta será 200
    E irá detectar o idioma original
    E irá retornar a tradução

@traduzir2
Cenário: Obter tradução
    Dado que eu precise da tradução de "Sweet child o' mine" para "pt-br"
    Quando eu mandar o request que realiza essa tradução
    Então o código de resposta será 200
    E a tradução será: "Minha doce criança"

@traduzir3
Esquema do Cenário: Obter tradução
    Dado que eu precise da tradução de "<frase>" para "<idioma>"
    Quando eu mandar o request que realiza essa tradução
    Então o código de resposta será 200
    E a tradução será: "<tradução>"
    E irá detectar o idioma original: "<idioma_original>"
    Exemplos: 
    | frase                               | idioma  | tradução                           | idioma_original   |
    | Looking at you through the glass    | pt-br   | Olhando para você através do vidro | en                |
    | Beth je t'entends appeler           | en      | Beth I hear you calling            | fr                | 
    | Escalera al cielo                   | fr      | Escalier vers le ciel              | es                |
