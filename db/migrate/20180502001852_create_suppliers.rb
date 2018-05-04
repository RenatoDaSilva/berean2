class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.references :church, foreign_key: true
      t.string :name
      t.string :cnpjcpf
      t.text :observations
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
