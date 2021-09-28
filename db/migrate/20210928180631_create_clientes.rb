class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :email
      t.string :cpfOuCnpj
      t.integer :tipo

      t.timestamps
    end
  end
end
