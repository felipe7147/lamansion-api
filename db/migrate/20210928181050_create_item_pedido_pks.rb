class CreateItemPedidoPks < ActiveRecord::Migration[5.2]
  def change
    create_table :item_pedido_pks do |t|

      t.timestamps
    end
  end
end
