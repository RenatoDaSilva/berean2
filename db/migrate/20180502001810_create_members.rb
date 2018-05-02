class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.references :church, foreign_key: true
      t.string :name
      t.string :email
      t.text :observations
      t.string :phone

      t.timestamps
    end
  end
end
