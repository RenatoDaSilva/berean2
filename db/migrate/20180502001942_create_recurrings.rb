class CreateRecurrings < ActiveRecord::Migration[5.0]
  def change
    create_table :recurrings do |t|
      t.references :church, foreign_key: true
      t.string :account
      t.string :references
      t.string :name
      t.decimal :value
      t.integer :maturity_day
      t.date :expires_on

      t.timestamps
    end
  end
end
