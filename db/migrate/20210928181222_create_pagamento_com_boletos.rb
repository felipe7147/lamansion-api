class CreatePagamentoComBoletos < ActiveRecord::Migration[5.2]
  def change
    create_table :pagamento_com_boletos do |t|
      t.date :dataVencimento
      t.date :dataPagamento

      t.timestamps
    end
  end
end
