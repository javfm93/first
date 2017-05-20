class CreateTable < ActiveRecord::Migration[5.0]
  def change
    create_table :prooftables do |t|
      t.string :table
      t.string :name
    end
  end
end
