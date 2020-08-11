class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :slug

      t.timestamps
    end
    add_index :teams, :slug, unique: true
  end
end
