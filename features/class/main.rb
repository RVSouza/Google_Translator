class Main
    def gerar_header
        {
            'Content-Type' => 'application/x-www-form-urlencoded',
            'Accept-Encoding' => 'application/gzip',
            'X-RapidAPI-Host'=> DATA['base']['host'],
            'X-RapidAPI-Key'=> DATA['token']['valido']
        }
    end


end