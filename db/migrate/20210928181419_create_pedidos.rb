class CreatePedidos < ActiveRecord::Migration[5.2]
  def change
    create_table :pedidos do |t|
      t.date :instante

      t.timestamps
    end
  end
end
