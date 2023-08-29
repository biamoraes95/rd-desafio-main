#language: pt

@funcional_api
Funcionalidade: Validar logradouro retornado
         Como usuário
         Eu quero consultar a api ViaCEP
   Para que ela retorne o logradouro correto

   @logradouro
   Cenário: Valide o logradouro que a API retorna
      Dado que tenho um CEP válido
      Quando consulto o cep através da ViaCEP API cep
      Então api deverá retornar o logradouro e cep corretamente