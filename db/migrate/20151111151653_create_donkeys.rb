class CreateDonkeys < ActiveRecord::Migration
  def change
    create_table :donkeys do |t|
      t.string :name
      t.references :owner, index: true, foreign_key: true
      t.date :dob
      t.references :breed, index: true, foreign_key: true
      t.string :med_cond

      t.timestamps null: false
    end
  end
end
