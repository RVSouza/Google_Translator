Dado('que eu precise da tradução de {string} para {string}') do |frase, idioma_traducao|
    @body = tradutor.preparar_body_traduzir(frase,idioma_traducao)
end
  
Quando('eu mandar o request que realiza essa tradução') do
    @resposta = tradutor.request_traduzir(@body)
end

Entao('o código de resposta será {int}') do |response_code| 
    expect(@resposta.code).to eq response_code
end

E('a tradução será: {string}') do |traducao|
    expect(@resposta['data']['translations'][0]['translatedText']).to eq traducao
end

E('irá detectar o idioma original: {string}') do |idioma_original|
    expect(@resposta['data']['translations'][0]['detectedSourceLanguage']).to eq idioma_original
end
