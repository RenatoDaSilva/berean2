class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.references :church, foreign_key: true
      t.references :account, foreign_key: true
      t.integer :position
      t.date :date
      t.string :kind
      t.decimal :value
      t.string :document
      t.references :member, foreign_key: true
      t.references :supplier, foreign_key: true
      t.date :written_off_in
      t.string :details

      t.timestamps
    end
  end
end
