class CreatePagamentoComCartaos < ActiveRecord::Migration[5.2]
  def change
    create_table :pagamento_com_cartaos do |t|
      t.integer :numeroDeParcelas

      t.timestamps
    end
  end
end
