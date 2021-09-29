namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    puts "Cadastrando os Objetos"
    10.times do |i|
      Produto.create!(
        nome:Faker::Name.name ,
        preco: Faker::Number.decimal(l_digits: 2)
        )
      Cliente.create!(
        nome:Faker::Name.name ,
        email:Faker::Internet.email(name: 'LaMansion') ,
        cpfOuCnpj: Faker::Number.leading_zero_number(digits: 11),
        tipo: Faker::Number.within(range: 1..10)
        )
      Cidade.create!(
        nome:Faker::Address.city
        )
      Endereco.create!(
        logradouro:Faker::Address.street_name,
        numero:Faker::Address.building_number,
        complemento:Faker::Address.secondary_address,
        bairro:Faker::Address.community,
        cep:Faker::Address.zip_code
        )
      Estado.create!(
        nome: Faker::Address.country
        )
      ItemPedido.create!(
        desconto: Faker::Number.decimal(l_digits: 2),
        quantidade:Faker::Number.within(range: 1..10) ,
        preco:Faker::Number.decimal(l_digits: 2)
        )
      ItemPedidoPk.create!(

        )
      Pagamento.create!(
        estado:Faker::Number.within(range: 1..2)
        )
      PagamentoComBoleto.create!(
        dataVencimento:Faker::Date.in_date_period(year: 2021, month: 9) ,
        dataPagamento:Faker::Date.in_date_period(year: 2021, month: 10)
        )
      Pedido.create!(
        instante: Faker::Date.in_date_period
        )
      Categorium.create!(
        nome: Faker::Name.name
        )
    end
    p "Objetos cadastrados com sucesso!!"
  end

end
