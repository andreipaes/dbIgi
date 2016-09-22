class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :stringId
      t.string :name
      t.string :cnpj

      t.timestamps null: false
    end
  end
end
