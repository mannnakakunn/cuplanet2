class CreateCupnoodles < ActiveRecord::Migration
  def change
    create_table :cupnoodles do |t|
      t.string :name
      t.string :company
      t.string :comment
      t.integer :rank

      t.timestamps
    end
  end
end
