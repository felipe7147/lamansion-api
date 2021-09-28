class CreateEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :enderecos do |t|
      t.string :logradouro
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cep

      t.timestamps
    end
  end
end
