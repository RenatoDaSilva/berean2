class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.references :church, foreign_key: true
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
