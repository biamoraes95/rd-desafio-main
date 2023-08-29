Dado("que tenho um CEP válido") do
    @cep = "04542051"
  end

  Quando("consulto o cep através da ViaCEP API cep") do
      @response = HTTParty.get("http://viacep.com.br/ws/#{@cep}/json")
  end

  Então("api deverá retornar o logradouro e cep corretamente") do
      expect(@response.code).to eq(200)
      response_body = JSON.parse(@response.body)
      expect(response_body['logradouro']).to_not be_empty
      expect(response_body['logradouro']).to eq('Rua Pedro Doll')
      expect(response_body['ddd']).to eq('11')
  end