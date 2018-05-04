class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.references :church, foreign_key: true
      t.string :code
      t.string :name
      t.string :kind

      t.timestamps
    end
  end
end
