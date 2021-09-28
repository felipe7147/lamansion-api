class CreateItemPedidos < ActiveRecord::Migration[5.2]
  def change
    create_table :item_pedidos do |t|
      t.float :desconto
      t.float :quantidade
      t.float :preco

      t.timestamps
    end
  end
end
