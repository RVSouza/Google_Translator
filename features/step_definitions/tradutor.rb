Dado('que eu tenho uma palavra que precisa ser traduzida') do
    @corpo = {
        'q'=> 'hello darkness my old friend',
        'target'=> 'es'
    }
    @cabecalho = {
        'Content-Type' => 'application/x-www-form-urlencoded',
        'Accept-Encoding' => 'application/gzip',
        'X-RapidAPI-Host'=> 'google-translate1.p.rapidapi.com',
        'X-RapidAPI-Key'=> 'cb420663d9mshab412e0575aca2cp108d15jsn6a91c8db8d04'
    }
  end

  Dado('que eu precise da tradução de {string} para {string}') do |frase, idioma_traducao|
    @corpo = {
        'q'=> frase,
        'target'=> idioma_traducao
    }
    @cabecalho = {
        'Content-Type' => 'application/x-www-form-urlencoded',
        'Accept-Encoding' => 'application/gzip',
        'X-RapidAPI-Host'=> 'google-translate1.p.rapidapi.com',
        'X-RapidAPI-Key'=> 'cb420663d9mshab412e0575aca2cp108d15jsn6a91c8db8d04'
    }
  end
  
  Entao('a tradução será: {string}') do |traducao|
    expect(@resposta['data']['translations'][0]['translatedText']).to eq traducao
  end
  
Quando('eu mandar o request que realiza essa tradução') do
    @resposta = HTTParty.post(DATA['base']['url'], headers: @cabecalho, body: @corpo)    
end

Entao('o código de resposta será 200') do 
    expect(@resposta.code).to eq 200
end

E('irá detectar o idioma original') do
    expect(@resposta['data']['translations'][0]['detectedSourceLanguage']).to eq "en"
end

E('irá retornar a tradução') do
    expect(@resposta['data']['translations'][0]['translatedText']).to eq "Hola oscuridad mi vieja amiga"
end

E('irá detectar o idioma original: {string}') do |idioma_original|
    expect(@resposta['data']['translations'][0]['detectedSourceLanguage']).to eq idioma_original
end
