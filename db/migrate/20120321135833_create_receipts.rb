class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.string  :receipt_no,
      t.integer :receipt_type,
      t.integer :house_id,
      t.string  :house_code,
      t.integer :plot_id,
      t.date    :print_date,
      t.string  :print_user,
      t.timestamps
    end

    add_column :bill_items,:receipt_id,:integer
  end
end
