class CreateChurches < ActiveRecord::Migration[5.0]
  def change
    create_table :churches do |t|
      t.string :name
      t.string :email
      t.text :observations
      t.string :phone

      t.timestamps
    end
  end
end
