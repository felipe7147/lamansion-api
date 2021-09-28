class CreatePagamentos < ActiveRecord::Migration[5.2]
  def change
    create_table :pagamentos do |t|
      t.integer :estado

      t.timestamps
    end
  end
end
