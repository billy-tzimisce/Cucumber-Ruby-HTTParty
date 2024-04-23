Dado('que executei o get com sucesso') do
  @response = HTTParty.get('https://portal.vr.com.br/api-web/comum/enumerations/VRPAT')
  #Valido que o status code é 200
  expect(@response.code).to eql 200
  print("Response code é ")
  print(@response.code)
  #valido a mensagem
  print(" Status é ")
  puts(@response.message)
end
Quando('verifico se o response possui a chave “typeOfEstablishment”') do
  expect(@response).to include("typeOfEstablishment")
  puts("Sucesso")
end
Entao('valido que existe chave “typeOfEstablishment”') do
  puts("sucesso")
end
E('exibo o tipo de estabelecimento "PIZZARIA"') do
  puts("Exibindo o estabelecimento PIZZARIA")
  puts(@response['typeOfEstablishment'][0])
  # Imprimindo em JSON, se necessário
  #@json = JSON.parse(@response.body)
  # print @json['typeOfEstablishment'][0]
end

Dado('que passo a seguinte string "bananas, tomates # e ventiladores"')do
end
Quando('passo o array de simbolos  ["#", "!"]')do
end
Então('retorna o string reduzida 1') do
  puts removeTextoAposSimbolo("bananas, tomates # e ventiladores", ["#", "!"]);
end

Dado('que passo a seguinte string "o rato roeu a roupa $ do rei % de roma"')do
end
Quando('passo o array de simbolos ["%", "!"]')do
end
Entao('retorna o string reduzida 2') do
  puts removeTextoAposSimbolo("o rato roeu a roupa $ do rei % de roma", ["%", "!"])
end

Dado('que passo a seguinte string "the quick brown fox & jumped over * the lazy dog"')do
end
Quando('passo o array de simbolos ["&", "*", "%", "!"]')do
end
Entao('retorna o string reduzida 3') do
  puts removeTextoAposSimbolo("the quick brown fox & jumped over * the lazy dog", ["&", "*", "%", "!"])
end

