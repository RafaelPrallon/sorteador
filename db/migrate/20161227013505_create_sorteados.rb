class CreateSorteados < ActiveRecord::Migration
  def change
    create_table :sorteados do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
