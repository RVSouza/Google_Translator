class Tradutor < Main
    def request_traduzir(body)
        HTTParty.post(DATA['base']['url'], headers: gerar_header, body: body)
    end

    def preparar_body_traduzir(frase, idioma_traducao, idioma_original=nil)
        {
            'q'=> frase,
            'target'=> idioma_traducao,
            'source'=> idioma_original
        }
    end
end